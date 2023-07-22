//
//  SheetRouter.swift
//  NavigationStackExample
//
//  Created by Kotaro Fukuo on 2023/07/22.
//

import SwiftUI

enum SheetNaviDestination {
    case sheetNextView
}

@MainActor
final class SheetRouter: ObservableObject {
    @Published var currentPath = [SheetNaviDestination]()
    
    func navigate(to destination: SheetNaviDestination) {
        currentPath.append(destination)
    }
}

@MainActor
extension View {
    func injectSheetRouter() -> some View {
        navigationDestination(for: SheetNaviDestination.self) { destination in
            switch destination {
            case .sheetNextView: return SheetNavView()
            }
        }
    }
}
