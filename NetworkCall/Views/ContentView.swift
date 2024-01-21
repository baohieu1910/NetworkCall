//
//  ContentView.swift
//  NetworkCall
//
//  Created by Hieu Le on 1/20/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: UserViewModel
    
    var body: some View {
        NavigationStack {
            List {
                Section("Name") {
                    ForEach(viewModel.users) { user in
                        NavigationLink(value: user) {
                            Text("\(user.name)")
                        }
                    }
                    .listRowBackground (
                        Capsule()
                            .fill(Color(white: 1, opacity: 0.9))
                            .padding(.vertical, 2)
                    )
                }
            }
            .navigationTitle("Users")
            .navigationDestination(for: User.self) { user in
                UserDetailView(user: user)
            }
            .onAppear() {
                viewModel.getUsers()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserViewModel())
    }
}
