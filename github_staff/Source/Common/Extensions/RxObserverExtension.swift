//
//  RxObserverExtension.swift
//  github_staff
//
//  Created by Dang Nguyen Vu on 27/05/2022.
//

import Foundation
import RxSwift
import RxCocoa

extension Observable {
    
    func unwrap<T>() -> Observable<T> where Element == T? {
        return self.filter { $0 != nil }.map { $0! }
    }
    
    func mapToVoid() -> Observable<Void> {
        return map({_ in })
    }
    
    func asDriverJustComplete() -> Driver<Element> {
        return asDriver { error in
            return Driver.empty()
        }
    }
}

private enum UnretainedError: Swift.Error {
    case failedRetaining
}
