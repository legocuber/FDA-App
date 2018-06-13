//
//  EventLog.swift
//  FDA-App
//
//  Created by Fredrik Fatemi on 6/12/18.
//  Copyright © 2018 Fredrik Fatemi. All rights reserved.
//

import Foundation
class ChildList {
    var list = [Child]()
    init(list: [Child] = [Child]()) {
        self.list = list
    }
    
    func addChild(c: Child) {
        list.append(c)
    }
    
    func encode() -> String {
        var tmp = ""
        for c in list {
            tmp = tmp + c.encodeString() + ";";
        }
        return tmp
    }
    
    static func decode(s: String) -> ChildList {
        let split = s.split(separator: ";").map(String.init)
        let tmplist = ChildList()
        for s in split {
            tmplist.addChild(c: Child.decodeString(s: s))
        }
        return tmplist
    }
    
    func exportChildren() {
        let defaults = UserDefaults.standard
        defaults.set(encode(), forKey: "childlist")
    }
    
    static func importChildren() -> ChildList{
        let defaults = UserDefaults.standard
        return ChildList.decode(s: defaults.string(forKey: "childlist")!)
    }
}
