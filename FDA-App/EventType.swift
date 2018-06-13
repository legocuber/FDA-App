//
//  EventType.swift
//  FDA-App
//
//  Created by Fredrik Fatemi on 6/12/18.
//  Copyright © 2018 Fredrik Fatemi. All rights reserved.
//

import Foundation
enum EventType: String {
    case OTHER
    case EATING
    case SLEEPING
    case DIAPER
    
    func type() -> String {
        return self.rawValue
    }
}
