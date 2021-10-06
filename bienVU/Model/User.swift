//
//  User.swift
//  DansMaRue
//
//  Created by Xavier NOEL on 09/05/2017.
//  Copyright © 2017 VilleDeParis. All rights reserved.
//

import Foundation
import TTGSnackbar

class User {
    
    // MARK: - Properties
    var firstName: String?
    var lastName: String?
    var email: String?
    var password: String?
    var isAgent: Bool?
    
    var tokenId: String?
    var uid: String?
    var accessToken: String?
    
    var isLogged:Bool = false
    
    private init() {
        email = UserDefaults.standard.object(forKey: Constants.Key.email) as? String
        isAgent = UserDefaults.standard.object(forKey: Constants.Key.isAgent) as? Bool
    }
    
    static let shared = User()
    
    func automaticAuthentification() {
        if let email = self.email {
            RestApiManager.sharedInstance.isMailAgent(email: email) {
                (isAgent: Bool) in
                
                User.shared.email = email
                User.shared.isAgent = isAgent
                User.shared.isLogged = true
                UserDefaults.standard.set(email, forKey: Constants.Key.email)
            }
        }
    }
    
    func disconnect() {
        self.isLogged = false
        self.email = nil
        self.isAgent = nil
        
        UserDefaults.standard.removeObject(forKey: Constants.Key.email)
        UserDefaults.standard.removeObject(forKey: Constants.Key.isAgent)
    }
}
