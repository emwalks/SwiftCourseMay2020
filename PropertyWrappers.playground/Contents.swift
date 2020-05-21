import UIKit

@propertyWrapper
struct PHValues<Value: Comparable> {
    
    var value: Value
    let range: ClosedRange<Value>
    
    var projectedValue:ClosedRange<Value>
    
    init(wrappedValue value: Value, _ range: ClosedRange<Value>) {
        precondition(range.contains(value))
        self.value = value
        self.range = range
        self.projectedValue = range
    }
    
    var wrappedValue: Value {
        get { value }
        set {
            value = min(max(range.lowerBound, newValue), range.upperBound)
            projectedValue = range
        }
        
    }
}

struct Solution
{
    @PHValues(0...14) var pH: Double = 7.0
}

let carbonicAcid = Solution(pH:4.68)

let defaultValue = Solution()

print(carbonicAcid.pH)

print(defaultValue.pH)

print(carbonicAcid.$pH)
