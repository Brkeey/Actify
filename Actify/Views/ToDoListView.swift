//
//  ToDoListView.swift
//  Actify
//
//  Created by Berke Yılmaz on 8.02.2025.
//

import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    private let userId: String
    
    init (userId: String) {
        self.userId = userId
    }

    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("Tasks")
            .toolbar {
                Button() {
                    
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    ToDoListView(userId: "")
}
