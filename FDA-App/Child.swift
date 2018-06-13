//
//  Child.swift
//  FDA-App
//
//  Created by Fredrik Fatemi on 6/12/18.
//  Copyright © 2018 Fredrik Fatemi. All rights reserved.
//

import Foundation
class Child {
    var birthdate: Date
    var firstname: String
    var middlename: String
    var lastname: String
    init (birthdate: Date, firstname: String, lastname: String, middlename: String) {
        self.birthdate = birthdate
        self.firstname = firstname
        self.lastname = lastname
        self.middlename = middlename
    }
    
    func encodeString() -> String {
        var tmp = DateUtil.dateToString(d: self.birthdate) + "/" + firstname
        tmp = tmp + "/" + middlename + "/" + lastname
        return tmp
    }
    
    static func decodeString(s : String) -> Child {
        let split = s.split(separator: "/").map(String.init)
        let date = DateUtil.stringToDate(s: split[0])!
        let firstname = split[1]
        let middlename = split[2]
        let lastname = split[3]
        
        return Child(birthdate: date, firstname: firstname, lastname: lastname, middlename: middlename)
    }
    
    
}
