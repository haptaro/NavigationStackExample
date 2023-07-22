//
//  Router.swift
//  NavigationStackExample
//
//  Created by Kotaro Fukuo on 2023/07/22.
//

import SwiftUI

enum Destination {
    case nextView
}

enum SheetDestination: Identifiable {
    case sheetView
    
    var id: Self { self }
}

@MainActor
final class AppRouter: ObservableObject {
    @Published var currentPath = [Destination]()
    @Published var presentedSheet: SheetDestination?

    func navigate(to destination: Destination) {
        currentPath.append(destination)
    }
}

@MainActor
extension View {
    func injectRouter() -> some View {
        navigationDestination(for: Destination.self) { destination in
            switch destination {
            case .nextView: return NextView()
            }
        }
    }

    func injectSheet(destination: Binding<SheetDestination?>) -> some View {
        sheet(item: destination) { destination in
            switch destination {
            case .sheetView: return SheetView()
            }
        }
    }
}
