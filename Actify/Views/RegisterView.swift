//
//  RegisterView.swift
//  Actify
//
//  Created by Berke Yılmaz on 8.02.2025.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                HeaderView()
                registerForm
                Spacer()
                errorMessageView
                BigButton(title: "Register", action: viewModel.register)
            }
        }
    }
    
    var registerForm: some View {
        Form {
            Section(header: Text("Register Form")) {
                TextField("Enter Your Name", text: $viewModel.name)
                    .autocorrectionDisabled()
                TextField("Email", text: $viewModel.email)
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                SecureField("Password", text: $viewModel.password)
            }
        }
        .frame(height: 250)
    }
    
    var errorMessageView: some View {
        Text(viewModel.errorMessage.isEmpty ? " " : viewModel.errorMessage)
            .foregroundColor(.red)
    }
}








#Preview {
    RegisterView()
}
