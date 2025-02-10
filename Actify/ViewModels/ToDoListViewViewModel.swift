//
//  ToDoListViewViewModel.swift
//  Actify
//
//  Created by Berke Yılmaz on 8.02.2025.
//
import FirebaseFirestore
import Foundation

class ToDoListViewViewModel:ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init (userId: String) {
        self.userId = userId
    }
    
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
