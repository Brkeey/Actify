//
//  LoginView.swift
//  Actify
//
//  Created by Berke Yılmaz on 8.02.2025.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                HeaderView()
                loginForm
                BigButton(title: "Login", action: {})
                Spacer()
                NavigationLink("Don't you have an account?", destination: RegisterView())
            }
        }
    }
    
    var loginForm: some View {
        Form {
            TextField ("Email", text: $viewModel.email)
                .autocorrectionDisabled()
                .autocapitalization(.none)
            SecureField("Password", text: $viewModel.password)
        }
        .frame(height: 150)
    }
}





#Preview {
    LoginView()
}
