//
//  LoginPageInteractor.swift
//  ubiquitous system
//
//  Created by Jonathan Ho on 2021-03-17.
//

import Foundation


protocol LoginPageInteractorInterface {
    func userLoggedIn(username: String?, password:String?)
}

class LoginPageInteractor: LoginPageInteractorInterface {
    
    
    var presenter:LoginPagePresenterInterface?
    
    func userLoggedIn(username: String?, password: String?) {
        //TODO use network manager
    }
}
