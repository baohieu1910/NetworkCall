//
//  NetworkCallApp.swift
//  NetworkCall
//
//  Created by Hieu Le on 1/20/24.
//

import SwiftUI

@main
struct NetworkCallApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(UserViewModel())
        }
    }
}
