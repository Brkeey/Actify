//
//  HeaderView.swift
//  Actify
//
//  Created by Berke Yılmaz on 8.02.2025.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            Image("actify-logo")
                .resizable()
                .frame(width: 150, height: 150)
            Text("Actify")
                .font(.system(size: 50))
                .fontWeight(.bold)
                .padding(.top, 200)
        }
        .padding(.top, 100)
    }
}

#Preview {
    HeaderView()
}
