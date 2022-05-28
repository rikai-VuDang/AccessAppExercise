//
//  ObjectExtension.swift
//  github_staff
//
//  Created by Dang Nguyen Vu on 26/05/2022.
//

import Foundation

import Foundation

extension NSObject {
    class var className: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }

    var className: String {
        return String(describing: type(of: self))
    }
}
