//
//  ToDoListViewModel.swift
//  to-do
//
//  Created by Matthew Deng on 2024-10-23.
//

import Foundation
import FirebaseFirestore

class ToDoListViewModel: ObservableObject {
    private let userId: String
    @Published var showingNewItemView = false
    
    init (userId: String) {
        self.userId = userId
    }
    
    /// Delete to do list item
    /// - Parameter id: Item id to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
        
    }
}
