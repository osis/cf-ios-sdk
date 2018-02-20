import Foundation

internal extension String {
    func bumpLastChar() -> String {
        var s = String(self)
        let scalar = self.unicodeScalars.last!
        
        var v = scalar.value
        if (v != 0x20) {
            v += 1
        }
        
        if let endIndex = s?.endIndex {
            s?.remove(at: (s?.characters.index(before: endIndex))!)
            s?.append(String(describing: UnicodeScalar(v)!))
        }
        
        return s!
    }
    
    func isValidURL() -> Bool {
        let regex = "((https|http)://)((\\w|-)+)(([.]|[/])((\\w|-)+))+"
        let predicate = NSPredicate(format: "SELF MATCHES %@", argumentArray: [regex])
        
        return predicate.evaluate(with: self)
    }
}
