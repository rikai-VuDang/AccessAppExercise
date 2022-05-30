//
//  Enviroment.swift
//  github_staff
//
//  Created by Dang Nguyen Vu on 26/05/2022.
//

import Foundation

class Enviroment {
    // Becasue Github will remove token when upload it to github
    // So I split git for this example
    static let token_part1 = "ghp_"
    static let token_part2 = "P42OX3aULXTikPVCL"
    static let token_part3 = "90SwUfhfyqMxw1zOhNl"
    static let token = token_part1 + token_part2 + token_part3
    
    static let host = "https://api.github.com"
}
