//
//  UserDetailView.swift
//  NetworkCall
//
//  Created by Hieu Le on 1/21/24.
//

import SwiftUI

struct UserDetailView: View {
    var user: User
    
    var body: some View {
        Form {
            Section("Info") {
                Text("ID: \(user.id)")
                Text("Age: \(user.age)")
                Text("Company: \(user.company)")
                Text("Email: \(user.email)")
                Text("Address: \(user.address)")
                Text("Register Date: \(user.registered)")
            }
            Section("About") {
                Text("\(user.about)")
            }
            Section("Tags") {
                List(user.tags, id:\.self) { tag in
                    Text("\(tag)")
                }
            }
            Section("Friend") {
                List(user.friends) { friend in
                    Text("\(friend.name)")
                }
            }
            .navigationTitle("\(user.name)")
        }
    }
}

//struct UserDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        UserDetailView()
//    }
//}
