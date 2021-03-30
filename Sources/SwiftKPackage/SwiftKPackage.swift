
import Foundation


struct SwiftKPackage {
    var text = "Hello, World!"
}
struct Validations {
    static func isValidEmailID(email:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailPredicate = NSPredicate(format: "SELF MATCHED %@", emailRegEx)
        return emailPredicate.evaluate(with: email)
    }
}
