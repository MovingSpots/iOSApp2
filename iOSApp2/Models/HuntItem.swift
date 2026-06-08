//
//  HuntItem.swift
//  iOSApp2
//
//  Created by SELVARAJ THYAGARAJAN on 2026-06-06.
//

import Foundation

//  This model represents one scavenger hunt item.
//  Each item has a business name, clue, prize description, and found status.
struct HuntItem: Codable, Identifiable {
    let id = UUID()
    let businessName: String
    let itemName: String
    let clue: String
    let prize: String
    
    //  This tells whether the participant has found this item.
    var isFound: Bool = false
    
    //  This is a simple placeholder to show whether a picture was taken.
    var photoTaken: Bool = false
        
}
