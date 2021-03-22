//
//  LoginPageRouter.swift
//  ubiquitous system
//
//  Created by Jonathan Ho on 2021-03-14.
//

import Foundation
import UIKit

protocol LoginPageRouterInterface {
    
}

class LoginPageRouter: LoginPageRouterInterface {
    var presenter:LoginPagePresenterInterface?
    weak var navigationController:UINavigationController?
    
    static func createModule( navigationController: UINavigationController) -> LoginPageViewController{
        let router = LoginPageRouter();
        let presenter = LoginPagePresenter();
        let interactor = LoginPageInteractor();
        let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "loginPage") as! LoginPageViewController
        
        // connect layer
        presenter.interactor = interactor;
        presenter.router = router;
        presenter.view = view;
        view.presenter = presenter;
        interactor.presenter = presenter
        router.presenter = presenter;
        router.navigationController = navigationController;
        
        return view;
    }
}
extension LoginPageRouterInterface {
    
}
