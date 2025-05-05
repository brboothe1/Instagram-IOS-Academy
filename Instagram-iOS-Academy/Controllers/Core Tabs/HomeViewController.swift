//
//  ViewController.swift
//  Instagram-iOS-Academy
//
//  Created by Brandon Boothe on 4/21/25.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        handleNonAuthenticated()
        
//        do {
//            try Auth.auth().signOut()
//        }
//        catch {
//            print("failed to sign out")
//        }
        
    }
    
    
    private func handleNonAuthenticated() {
        if Auth.auth().currentUser == nil {
            // show log in
            
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
        }
    }


}

