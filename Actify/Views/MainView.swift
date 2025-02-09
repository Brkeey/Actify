//
//  ContentView.swift
//  Actify
//
//  Created by Berke Yılmaz on 8.02.2025.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserID.isEmpty {
            accountView
            
            } else {
                LoginView()
        }
    }
    
    @ViewBuilder
    var accountView: some View {
        TabView {
            ToDoListView(userId: viewModel.currentUserID)
                .tabItem {
                    Label("Tasks", systemImage: "house")
                }
            ProfileView()
                .tabItem {
                    Label("profile", systemImage: "person.circle")
                }
        }
    }
}

#Preview {
    MainView()
}
