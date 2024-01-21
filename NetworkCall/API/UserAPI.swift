//
//  UserAPI.swift
//  NetworkCall
//
//  Created by Hieu Le on 1/21/24.
//

import Foundation

class UserAPI {
    func loadData(completion: @escaping([User]) -> ()) {
        guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json") else {
            print("Invalid url")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601
            
            let users = try! decoder.decode([User].self, from: data!)
            DispatchQueue.main.async {
                completion(users)
            }
        }.resume()
    }
}
