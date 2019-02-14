//
//  Credentials.swift
//  Pwd Safe
//
//  Created by iFlash on 14/02/2019.
//  Copyright © 2019 iFlash. All rights reserved.
//

import Foundation
import RealmSwift

class Credentials: Object {
    @objc private dynamic var _title = ""
    @objc private dynamic var _login = ""
    @objc private dynamic var _password = ""
    @objc private dynamic var _url = ""
    
    var title:String {
        get {
            return _title
        }
        set {
            realm?.beginWrite()
            _title = newValue
            try? realm?.commitWrite()
        }
    }
    
    var login:String {
        get {
            return _login
        }
        set {
            realm?.beginWrite()
            _login = newValue
            try? realm?.commitWrite()
        }
    }
    
    var password:String {
        get {
            return _password
        }
        set {
            realm?.beginWrite()
            _password = newValue
            try? realm?.commitWrite()
        }
    }
    
    var url:String {
        get {
            return _url
        }
        set {
            realm?.beginWrite()
            _url = newValue
            try? realm?.commitWrite()
        }
    }
    
}