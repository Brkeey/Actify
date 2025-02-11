//
//  ProfileView.swift
//  Actify
//
//  Created by Berke Yılmaz on 8.02.2025.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    init() {
        
    }
    
    var body: some View {
        NavigationView {
            VStack {
                
                if let user = viewModel.user {
                    profile(user: user)
                } else {
                    Text("Profile Loading...")
                }
                // logout
                BigButton(title: "Exit", action: {
                    viewModel.logout()
                })
            }
            .navigationTitle("Profile")
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
    
    @ViewBuilder
    func profile(user: User) -> some View {
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundStyle(Color.blue)
            .frame(width: 125, height: 125)
        
        VStack {
            HStack {
                Text("Name:")
                Text(user.name)
            }
            HStack {
                Text("Email:")
                Text(user.email)
            }
            HStack {
                Text("Registration Date:")
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
            }
        }
    }
}

#Preview {
    ProfileView()
}
