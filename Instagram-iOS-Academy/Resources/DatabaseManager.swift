//
//  DatabaseManager.swift
//  Instagram-iOS-Academy
//
//  Created by Brandon Boothe on 4/27/25.
//

import Foundation
import FirebaseDatabase

public class DatabaseManager {
    
    static let shared = DatabaseManager()
    
    private let database = Database.database().reference()
    
    // MARK: - Public
    
    /// Check if username and email is available
    /// - Parameters
    ///     - email: String representing email
    ///     - username: string representing username
    public func canCreateNewUser(with email: String, username: String, completion: (Bool) -> Void) {
        completion(true)
    }
    
    /// Insers new user to database
    /// - Parameters
    ///     - email: String representing email
    ///     - username: string representing username
    ///     - completion: Async callback for result if database entry succeeded
    public func insertNewUser(with email: String, username: String, completion: @escaping (Bool) -> Void) {
        database.child(email.safeDatabaseKey()).setValue(["username": username]) {error, _ in
            
            if error == nil {
                // succeeded
                completion(true)
                return
            }
            else {
            // failed
                completion(false)
                return
            }
        }
    }
    
}
