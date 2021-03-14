//
//  UICoordinator.swift
//  ubiquitous system
//
//  Created by Jonathan Ho on 2021-03-14.
//

import UIKit

class UICoordinator {
    
    func presentInitialScreen(on window: UIWindow) {
        // TODO: change to feed depeing on login status
        let router = LoginPageRouter()
        
        let navigationVC = StoryboardScene.Main.instantiateNavigationController()
        let viewModel = LoginPageViewModel.init(with: router)
        
        guard let viewController = navigationVC.topViewController as? RepoSearchViewController else {
            assertionFailure("Main storyboard configured not properly")
            return
        }
        
        viewController.viewModel = viewModel
        router.baseViewController = viewController
        
        window.rootViewController = navigationVC
    }
    
}
