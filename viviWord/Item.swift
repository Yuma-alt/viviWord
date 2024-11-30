//
//  Item.swift
//  viviWord
//
//  Created by Yuma on 2024/11/30.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
