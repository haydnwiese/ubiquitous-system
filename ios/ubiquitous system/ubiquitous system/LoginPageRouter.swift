//
//  LoginPageRouter.swift
//  ubiquitous system
//
//  Created by Jonathan Ho on 2021-03-14.
//

import Foundation
import UIKit

class LoginPageRouter: CoreRouter {
    
    enum PresentationContext {
        case view
    }
    
    weak var baseViewController: UIViewController?
    
    func present(on baseVC: UIViewController, animated: Bool, context: Any?, completion: ((Bool) -> Void)?) {
        guard let presentationContext = context as? PresentationContext else {
            assertionFailure("The context type missmatch")
            return
        }
        
        switch presentationContext {
        case .view:
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            guard let rootVC = storyboard.instantiateInitialViewController() as? LoginPageViewController else {
                print("ViewController not found")
                return
            }
            let viewModel = LoginPageViewModel.init(with: self )
            rootVC.viewModel = viewModel
            
            baseVC.navigationController?.pushViewController(rootVC, animated: true)
            baseViewController = baseVC
            print("here")
        }
    }
    
    func enqueueRoute(with context: Any?, animated: Bool, completion: ((Bool) -> Void)?) {
        
    }
    
    func dismiss(animated: Bool, context: Any?, completion: ((Bool) -> Void)?) {
        
    }
}
let storyboard = UIStoryboard(name: "Main", bundle: nil)
