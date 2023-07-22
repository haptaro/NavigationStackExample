//
//  NextView.swift
//  NavigationStackExample
//
//  Created by Kotaro Fukuo on 2023/07/22.
//

import SwiftUI

struct NextView: View {
    @EnvironmentObject private var appRouter: AppRouter

    var body: some View {
        VStack {
            Text("Next View")
            Button(action: {
                appRouter.presentedSheet = .sheetView
            }, label: {
                Text("Show sheet")
            })
        }
        .injectSheet(destination: $appRouter.presentedSheet)
    }
}

struct NextView_Previews: PreviewProvider {
    static var previews: some View {
        NextView()
    }
}
