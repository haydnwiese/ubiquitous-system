//
//  LoginPageViewController.swift
//  ubiquitous system
//
//  Created by Jonathan Ho on 2021-03-14.
//

import UIKit
import RxSwift
import RxCocoa

class LoginPageViewController: ViewController, CoreViewController {
    
    private let disposeBag = DisposeBag();
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    var viewModel: LoginPageViewModelProtocol!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func loginAction(_ sender: Any) {
        // send request
        //check that th response is good
        // interactor login
    }
    
    // MARK: - TextField
    
    
}
