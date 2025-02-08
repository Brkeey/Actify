//
//  LoginView.swift
//  Actify
//
//  Created by Berke Yılmaz on 8.02.2025.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isLoggedIn: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                HeaderView()
                LoginForm
                LoginButton
                Spacer()
                VStack {
                    NavigationLink("Don't you have an account?", destination: RegisterView())
                }
            }
        }
    }
    
    var LoginForm: some View {
        Form {
            TextField ("Email", text: $email)
            SecureField("Password", text: $password)
        }
        .frame(height: 150)
    }
    
    var LoginButton: some View {
        Button(action: {
            isLoggedIn = true
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 5)
                    .foregroundStyle(.primary)
                    
                Text("Login")
                    .foregroundStyle(.white)
            }
        })
        .frame(height: 50)
        .padding(.horizontal)
    }
}








#Preview {
    LoginView()
}
