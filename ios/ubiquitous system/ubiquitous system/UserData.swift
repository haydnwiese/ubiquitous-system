//
//  UserData.swift
//  VaccPass
//
//  Created by Jonathan Ho on 2021-01-23.
//  Copyright © 2021 Jonathan Ho. All rights reserved.
//

import Foundation
struct PropertyKey {
    static let userName = "userName";
    static let email = "email";
    static let token = "token";
}
class UserData: NSObject, NSCoding {
    static let sharedInstance = UserData();
    var userName: String;
    var token: String;
    var email: String;

    
    override init() {
        userName = "";
        email = "";
        token = ""
    }
    func encode(with coder: NSCoder) {
        coder.encode(userName, forKey: PropertyKey.userName);
        coder.encode(email, forKey: PropertyKey.email);
        coder.encode(token, forKey: PropertyKey.token)
    }
    
    required init?(coder: NSCoder) {
        userName = coder.decodeObject(forKey: PropertyKey.userName) as! String;
        email = coder.decodeObject(forKey: PropertyKey.email) as! String;
        token = coder.decodeObject(forKey: PropertyKey.token) as! String
    }
    
    
}
