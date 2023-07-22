//
//  SheetView.swift
//  NavigationStackExample
//
//  Created by Kotaro Fukuo on 2023/07/22.
//

import SwiftUI

struct SheetView: View {
    @StateObject private var sheetRouter = SheetRouter()
    
    var body: some View {
        NavigationStack(path: $sheetRouter.currentPath, root: {
            VStack {
                Text("Sheet")
                Button(action: {
                    sheetRouter.navigate(to: .sheetNextView)
                }, label: {
                    Text("Sheet Nav Button")
                })
            }
            .injectSheetRouter()
        })
        .environmentObject(sheetRouter)
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
