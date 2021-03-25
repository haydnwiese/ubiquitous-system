//
//  LoginPagePresenter.swift
//  ubiquitous system
//
//  Created by Jonathan Ho on 2021-03-14.
//

import Foundation

protocol LoginPagePresenterInterface{
    func onViewWillAppear()
    func userLoggedIn(username: String?, password: String?)
}

class LoginPagePresenter: LoginPagePresenterInterface{
    
    var view: LoginPageViewController?
    var router: LoginPageRouterInterface?
    var interactor: LoginPageInteractorInterface?
    
    func onViewWillAppear() {
        print("it works")
    }
    func userLoggedIn(username: String?, password: String?) {
        interactor?.userLoggedIn(username: username, password: password)
    }
}
