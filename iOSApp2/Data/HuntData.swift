//
//  HuntData.swift
//  iOSApp2
//
//  Created by SELVARAJ THYAGARAJAN on 2026-06-06.
//

import Foundation


//  This file stores sample scavenger hunt data.
//  There are 10 hidden items at different Local businesses.
struct HuntData {
    
    static let sampleItems: [HuntItem] = [
        HuntItem(
            businessName: "Brampton Coffee House",
            itemName: "Golden Coffee Cup",
            clue: "Find the cup near the smell of fresh morning coffee.",
            prize: "Free small coffee"
        ),
        HuntItem(
            businessName: "Main Street Book Store",
            itemName: "Blue Bookmark",
            clue: "Look where adventure stories begin.",
            prize: "10% off one book"
        ),
        HuntItem(
            businessName: "City Movie Theatre",
            itemName: "Mini Popcorn Box",
            clue: "Search near the place where movie snacks wait.",
            prize: "Free popcorn upgrade"
        ),
        HuntItem(
            businessName: "Downtown Pizza",
            itemName: "Tiny Pizza Slice",
            clue: "The clue is close to the oven, but not too hot.",
            prize: "Free drink with pizza"
        ),
        HuntItem(
            businessName: "Fresh Fruit Market",
            itemName: "Red Apple Card",
            clue: "Look near the apples that shine bright red.",
            prize: "5% off fruits"
        ),
        HuntItem(
            businessName: "Local Sports Shop",
            itemName: "Small Soccer Ball",
            clue: "Find it near the shoes that run fast.",
            prize: "10% off sports gear"
        ),
        HuntItem(
            businessName: "Sweet Treat Bakery",
            itemName: "Cupcake Sticker",
            clue: "Search near the sweetest display case.",
            prize: "Free cookie"
        ),
        HuntItem(
            businessName: "Green Garden centre",
            itemName: "Leaf Token",
            clue: "Look where small plants begin their journey.",
            prize: "10% off plants"
        ),
        HuntItem(
            businessName: "Family Game Store",
            itemName: "Dice Keychain",
            clue: "Find it near games that bring families together.",
            prize: "Free game night coupon"
        ),
        HuntItem(
            businessName: "Town Gift Shop",
            itemName: "Silver Star",
            clue: "Search near the souvenirs that sparkle.",
            prize: "15% off gift items"
        )
    ]
}
