import UIKit



class A {
    public var message: String
    init() {
        self.message = "Hello World, "
    }
}

class B : A {
    
    private var name: String
    private var total: A? = nil
    
    override
    init() {
        self.name = "Unknown+"
       
        
        super.init()
         self.message += "by B !"
    }
    
    convenience init(_ message: String) {
        self.init()
        self.message += message
    }
    
    func inc() {
        self.message += " - "
    }
    
    func getTotal() -> String {
        if(total != nil) {
            return total!.message
        }
        
       return "Nihil"
    }
}

let obj = B("by Custom initializer")
print(obj.message)
obj.inc()
obj.inc()
print("Total " + obj.getTotal())

