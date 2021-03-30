
import Foundation
import UIKit

//struct SwiftKPackage {
//    var text = "Hello, World!"
//}
//public struct Validations {
//   public static func isValidEmailID(email:String) -> Bool {
//        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
//        
//        let emailPredicate = NSPredicate(format: "SELF MATCHED %@", emailRegEx)
//    
//        return emailPredicate.evaluate(with: email)
//    }
//}
extension String{
    func isValidEmail() -> Bool {
           // here, `try!` will always succeed because the pattern is valid
           let regex = try! NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", options: .caseInsensitive)
           return regex.firstMatch(in: self, options: [], range: NSRange(location: 0, length: count)) != nil
       }
}
