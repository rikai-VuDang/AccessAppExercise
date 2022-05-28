//
//  ViewExtension.swift
//  github_staff
//
//  Created by Dang Nguyen Vu on 28/05/2022.
//

import Foundation
import UIKit

extension UIView {
    class func loadViewFromNib<T: UIView>(type: T.Type) -> T {
        return Bundle.main.loadNibNamed(T.className, owner: nil)!.first as! T
    }
}
