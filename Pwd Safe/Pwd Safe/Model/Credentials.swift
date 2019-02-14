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
}
