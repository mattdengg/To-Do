//
//  ToDoListItemViewModel.swift
//  to-do
//
//  Created by Matthew Deng on 2024-10-23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

//single todo list
//primary tab

class ToDoListItemViewModel: ObservableObject {
    
    init() {}
    
    func toggleIsDone(item: ToDoListItem) {
        var newItem = item
        newItem.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(newItem.id)
            .setData(newItem.asDictionary())
    }
}
