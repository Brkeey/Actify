//
//  RegisterView.swift
//  Actify
//
//  Created by Berke Yılmaz on 8.02.2025.
//

import SwiftUI

struct RegisterView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                HeaderView()
                registerForm
                BigButton(title: "Register", action: {})
            }
        }
    }
    
    var registerForm: some View {
        Form {
            Section(header: Text("Register Form")) {
                TextField("Enter Your Name", text: $name)
                    .autocorrectionDisabled()
                TextField("Email", text: $email)
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                SecureField("Password", text: $password)
                
            }
        }
        .frame(height: 200)
    }
}








#Preview {
    RegisterView()
}
