//
//  ContentView.swift
//  NavigationStackExample
//
//  Created by Kotaro Fukuo on 2023/07/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var appRouter: AppRouter

    var body: some View {
        VStack {
            Button(action: {
                appRouter.navigate(to: .nextView)
            }, label: {
                Text("Next Button")
            })
        }
        .injectRouter()
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
