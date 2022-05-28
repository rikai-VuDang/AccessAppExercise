//
//  RxDriver.swift
//  github_staff
//
//  Created by Dang Nguyen Vu on 27/05/2022.
//

import Foundation
import RxSwift
import RxCocoa

extension Driver {

    func mapToVoid() -> SharedSequence<SharingStrategy, Void> {
        return map { _ in }
    }

    func unwrap<T>() -> Driver<T> where Element == T? {
        return self.filter({$0 != nil}).map({$0!}) as! SharedSequence<DriverSharingStrategy, T>
    }
}
