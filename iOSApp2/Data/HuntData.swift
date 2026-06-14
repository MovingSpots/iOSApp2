//
//  HuntData.swift
//  iOSApp2
//
//  Created by SELVARAJ THYAGARAJAN on 2026-06-06.
//

import Foundation

// HuntData stores the sample business scavenger hunt items.
// Assignment requires 10 hidden items.
struct HuntData {
    static let sampleItems: [HuntItem] = [
        HuntItem(businessName: "Brampton Coffee House", itemName: "Golden Coffee Cup", clue: "Find the cup near the smell of fresh coffee.", prize: "Free small coffee", category: "Cafe"),
        HuntItem(businessName: "Main Street Book Store", itemName: "Blue Bookmark", clue: "Look where adventure stories begin.", prize: "10% off one book", category: "Book Store"),
        HuntItem(businessName: "City Movie Theatre", itemName: "Mini Popcorn Box", clue: "Search near the movie snacks counter.", prize: "Free popcorn upgrade", category: "Theatre"),
        HuntItem(businessName: "Downtown Pizza", itemName: "Tiny Pizza Slice", clue: "The clue is close to the oven, but not too hot.", prize: "Free drink with pizza", category: "Restaurant"),
        HuntItem(businessName: "Fresh Fruit Market", itemName: "Red Apple Card", clue: "Look near the apples that shine bright red.", prize: "5% off fruits", category: "Market"),
        HuntItem(businessName: "Local Sports Shop", itemName: "Small Soccer Ball", clue: "Find it near the shoes that run fast.", prize: "10% off sports gear", category: "Sports"),
        HuntItem(businessName: "Sweet Treat Bakery", itemName: "Cupcake Sticker", clue: "Search near the sweetest display case.", prize: "Free cookie", category: "Bakery"),
        HuntItem(businessName: "Green Garden Centre", itemName: "Leaf Token", clue: "Look where small plants begin their journey.", prize: "10% off plants", category: "Garden"),
        HuntItem(businessName: "Family Game Store", itemName: "Dice Keychain", clue: "Find it near games that bring families together.", prize: "Free game coupon", category: "Games"),
        HuntItem(businessName: "Town Gift Shop", itemName: "Silver Star", clue: "Search near the souvenirs that sparkle.", prize: "15% off gifts", category: "Gift Shop")
    ]
}
