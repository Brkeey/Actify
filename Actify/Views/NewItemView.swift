//
//  NewItemView.swift
//  Actify
//
//  Created by Berke Yılmaz on 8.02.2025.
//

import SwiftUI

struct NewItemView: View {
    @Binding var newItemPresented: Bool
    @StateObject var viewModel = NewItemViewViewModel()
    
    var body: some View {
        VStack {
            Text("New Item")
                .font(.title)
                .bold()
                .padding(.top, 100)
            Form {
                TextField("Title", text:$viewModel.title)
                DatePicker("End Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                BigButton(title: "Save", action: {
                    if viewModel.canSave {
                        viewModel.save()
                        newItemPresented = false
                    } else {
                        viewModel.showAlert = true
                    }
                })
            }
            .alert(isPresented: $viewModel.showAlert, content: {
                Alert(
                    title: Text("Error"),
                    message: Text("Please fill all fields"))
            })
        }
        
    }
}

#Preview {
    NewItemView(newItemPresented: Binding(get: {
        return true
    }, set: { _ in
        
    }))
}
