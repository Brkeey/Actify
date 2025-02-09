//
//  NewItemViewViewModel.swift
//  Actify
//
//  Created by Berke Yılmaz on 8.02.2025.
//

import Foundation

class NewItemViewViewModel:ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    
    
    init () {
        
    }
    
    func save() {
        
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        return true
    }
}
