//
//  FirebaseManager.swift
//  SwiftUIFireBaseChat
//
//  Created by Furkan Cingöz on 20.08.2023.
//

import Foundation
import Firebase
import FirebaseStorage
import FirebaseDatabase
import FirebaseFirestore
class FirebaseManager: NSObject {
    
    let auth: Auth
    let storage: Storage
    let firestore: Firestore
    
    static let shared = FirebaseManager()
    
    override init() {
        FirebaseApp.configure()
        
        self.auth = Auth.auth()
        self.storage = Storage.storage()
        self.firestore = Firestore.firestore()
        
        super.init()
    }
    
}
