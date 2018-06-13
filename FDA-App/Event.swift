//
//  Event.swift
//  FDA-App
//
//  Created by Fredrik Fatemi on 6/12/18.
//  Copyright © 2018 Fredrik Fatemi. All rights reserved.
//

import Foundation
class Event {
    var date: Date
    var child: Child
    var type: EventType
    var comments: String
    init (date: Date, child: Child, type: EventType, comments: String) {
        self.date = date
        self.child = child
        self.type = type
        self.comments = comments
    }
    
    /*
     Encoding format: yyyy-MM-dd HH:mm:ss|childEncode|EventType|comments
 
     */
    
    func encodeString() -> String {
        var tmp = DateUtil.dateToString(d: date) + "|"
            tmp = tmp + child.encodeString() + "|"
            tmp = tmp + type.type() + "|" + comments
        return tmp
    }
    
    static func decodeString(s : String) -> Event {
        let split = s.split(separator: "|").map(String.init)
        
        let date = DateUtil.stringToDate(s: split[0])!
        let child = Child.decodeString(s: split[1])
        let type = EventType(rawValue: split[2])
        let comments = split[3]
        
        return Event(date: date, child: child, type: type!, comments: comments)
    }
}
