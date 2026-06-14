//
//  HuntItem.swift
//  iOSApp2
//
//  Created by SELVARAJ THYAGARAJAN on 2026-06-06.
//

import Foundation

// HuntItem represents one hidden scavenger hunt item.
// Identifiable allows the item to be displayed in SwiftUI Lists.
struct HuntItem: Identifiable {
    let id = UUID()
    let businessName: String
    let itemName: String
    let clue: String
    let prize: String
    let category: String
    
    // These values change when the user finds the item.
    var isFound: Bool = false
    var photoTaken: Bool = false
}
