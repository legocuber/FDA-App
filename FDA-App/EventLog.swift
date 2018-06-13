//
//  EventLog.swift
//  FDA-App
//
//  Created by Fredrik Fatemi on 6/12/18.
//  Copyright © 2018 Fredrik Fatemi. All rights reserved.
//

import Foundation
class EventLog {
    var log = [Event]()
    init(log: [Event] = [Event]()) {
        self.log = log
    }
    
    func addEvent(e: Event) {
        log.append(e)
    }
    
    func encode() -> String {
        var tmp = ""
        for e in log {
            tmp = tmp + e.encodeString() + ";";
        }
        return tmp
    }
    
    static func decode(s: String) -> EventLog {
        let split = s.split(separator: ";").map(String.init)
        let tmplog = EventLog()
        for s in split {
            tmplog.addEvent(e: Event.decodeString(s: s))
        }
        return tmplog
    }
    
    func exportEvents() {
        let defaults = UserDefaults.standard
        defaults.set(encode(), forKey: "eventlog")
    }
    
    static func importChildren() -> EventLog {
        let defaults = UserDefaults.standard
        return EventLog.decode(s: defaults.string(forKey: "eventlog")!)
    }
    
}
