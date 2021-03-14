//
//  MVVMViewController.swift
//  
//
//  Created by Jonathan Ho on 2021-03-14.
//

protocol CoreViewController: class {
    
    associatedtype ViewModelType
    
    var viewModel: ViewModelType! { get set }
    
}
