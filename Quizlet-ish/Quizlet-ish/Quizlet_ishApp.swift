//
//  Quizlet_ishApp.swift
//  Quizlet-ish
//
//  Created by Jeffrey Yum on 4/13/22.
//

import SwiftUI
import Firebase

@main
struct quizlet_ishApp: App {
    
    init() {
        FirebaseApp.configure()
        AuthenticationService.signIn()
      }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
