//
//  ResultView.swift
//  iOSApp2
//
//  Created by SELVARAJ THYAGARAJAN on 2026-06-06.
//

import SwiftUI

struct ResultView: View {
    
    let foundCount: Int
    
    // Reward logic based on assignment instructions.
    var rewardMessage: String {
        if foundCount == 10 {
            return "Excellent! You found all 10 items. You receive a 20% discount code and entry into the $5000 grand prize draw."
        } else if foundCount >= 7 {
            return "Great work! You found \(foundCount) items. You receive a 20% discount code."
        } else if foundCount >= 5 {
            return "Good job! You found \(foundCount) items. You receive a 10% discount code."
        } else {
            return "You need to find at least 5 items to receive a discount code."
        }
    }
    
    var discountCode: String {
        if foundCount == 10 {
            return "GRAND20"
        } else if foundCount >= 7 {
            return "HUNT20"
        } else if foundCount >= 5 {
            return "HUNT10"
        } else {
            return "NO CODE"
        }
    }
    
    var body: some View {
        VStack(spacing: 24) {
            
            Image(systemName: foundCount == 10 ? "trophy.fill" : "gift.fill")
                .font(.system(size: 90))
                .foregroundColor(.orange)
            
            Text("Submission Result")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Items Found: \(foundCount) / 10")
                .font(.title2)
            
            Text(rewardMessage)
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding()
            
            VStack(spacing: 8) {
                Text("Discount Code")
                    .font(.headline)
                
                Text(discountCode)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(16)
            
            Text("Online submission simulated successfully.")
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            Spacer()
        }
        .padding()
        .navigationTitle("Results")
    }
}

#Preview {
    ResultView(foundCount: 10)
}
