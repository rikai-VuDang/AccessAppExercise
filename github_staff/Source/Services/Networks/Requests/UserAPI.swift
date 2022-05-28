//
//  UserAPI.swift
//  github_staff
//
//  Created by Dang Nguyen Vu on 26/05/2022.
//

import Foundation
import Alamofire

enum UserAPI: URLRequestConvertible, APIRequestProtocol {
    case list(since: Int = 0)
    case detail(id: String)
    
    var method: HTTPMethod {
        return .get
    }
    
    var path: String {
        switch self {
        case .list:
            return "/users"
        case .detail(let id):
            return "/users/\(id)"
        }
    }
    
    var params: Parameters? {
        switch self {
        case .list:
            return ["per_page": 100]
        default:
            return nil
        }
    }
}
