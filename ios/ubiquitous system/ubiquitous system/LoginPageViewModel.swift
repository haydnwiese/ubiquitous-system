//
//  LoginPagePresenter.swift
//  ubiquitous system
//
//  Created by Jonathan Ho on 2021-03-14.
//

import Foundation
import RxRelay
import RxSwift

protocol LoginPageViewModelProtocol: CoreViewModel {
}

class LoginPageViewModel: LoginPageViewModelProtocol {

    
    let router: CoreRouter
    
    init(with router: CoreRouter) {
        self.router = router
        
        
    }
}
