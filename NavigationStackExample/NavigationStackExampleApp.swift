//
//  NavigationStackExampleApp.swift
//  NavigationStackExample
//
//  Created by Kotaro Fukuo on 2023/07/22.
//

import SwiftUI

@main
struct NavigationStackExampleApp: App {
    @StateObject private var appRouter = AppRouter()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $appRouter.currentPath) {
                ContentView()
            }
            .environmentObject(appRouter)
        }
    }
}


