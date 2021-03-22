//
//  LoginPageViewController.swift
//  ubiquitous system
//
//  Created by Jonathan Ho on 2021-03-14.
//

import UIKit
protocol LoginPageViewInterface {
 
}


class LoginPageViewController: ViewController, LoginPageViewInterface{
    
    var presenter: LoginPagePresenterInterface?
    

    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func loginAction(_ sender: Any) {
        // send request
        //check that th response is good
        // interactor login
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
        presenter?.onViewWillAppear();
    }
    
}
