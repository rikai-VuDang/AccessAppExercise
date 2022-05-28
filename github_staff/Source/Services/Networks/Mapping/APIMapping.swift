//
//  Mapping.swift
//  github_staff
//
//  Created by Dang Nguyen Vu on 27/05/2022.
//

import Foundation
import RxSwift
import RxCocoa

extension Observable where Element == Data? {
    func mapObject<T: Codable>(type: T.Type) -> Observable<T?> {
        return flatMap { data -> Observable<T?> in
            guard let data = data else {
                return Observable<T?>.just(nil)
            }
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let object = try decoder.decode(T.self, from: data)
            return Observable<T?>.just(object)
        }
    }
}
