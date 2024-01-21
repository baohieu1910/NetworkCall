//
//  UserViewModel.swift
//  NetworkCall
//
//  Created by Hieu Le on 1/21/24.
//

import Foundation

class UserViewModel: ObservableObject {
    @Published var users: [User] = [User]()
    private let apiService: UserAPI = UserAPI()
    
    func getUsers() {
        apiService.loadData { users in
            self.users = users
        }
//        var userList: [User] = []
//        for user in self.users {
//            var newUser = user
//            for friend in user.friends {
//                if friend.id == user.id {
//                    newUser.friendsAsUser.append(user)
//                }
//            }
//            userList.append(newUser)
//        }
//        self.users = userList
    }
}
