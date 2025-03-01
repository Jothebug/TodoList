//
//  TodoListApp.swift
//  TodoList
//
//  Created by HaYen on 24/2/25.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manage Models for View
 */

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle()) // must add this style because ipad has a different default style for navigation
            .environmentObject(listViewModel)
        }
    }
}
