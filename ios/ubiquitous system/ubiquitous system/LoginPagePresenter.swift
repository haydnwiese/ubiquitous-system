//
//  LoginPagePresenter.swift
//  ubiquitous system
//
//  Created by Jonathan Ho on 2021-03-14.
//

import Foundation

protocol LoginPagePresenterInterface{
    func onViewWillAppear()
}

class LoginPagePresenter: LoginPagePresenterInterface{
    
    
    var view: LoginPageViewController?
    var router: LoginPageRouterInterface?
    var interactor: LoginPageInteractorInterface?
    
    func onViewWillAppear() {
        print("it works")
    }
    
}
