//
//  UserAPI.swift
//  github_staff
//
//  Created by Dang Nguyen Vu on 26/05/2022.
//

import Foundation
import Alamofire

enum UserAPI: URLRequestConvertible, APIRequestProtocol {
    case list(since: Int, limit: Int)
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
        case .list(let since, let limit):
            return ["per_page": limit, "since": since]
        default:
            return nil
        }
    }
}
