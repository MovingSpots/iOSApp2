//
//  ResultView.swift
//  iOSApp2
//
//  Created by SELVARAJ THYAGARAJAN on 2026-06-06.
//

import SwiftUI

struct ResultView: View {
    
    let foundCount: Int
    
    //  This calculates the reward based on the number of items found.
    var rewardMessage: String {
        if foundCount == 10 {
            return "Congratulations! You found all 10 items. You receivee a 20% discount code and entry into the $5000 grand prize draw. "
        } else if foundCount >= 7 {
            return "Great work! You found \(foundCount) items. You receive a 20% discount code."
        } else if foundCount >= 5 {
            return "Good job! You found \(foundCount) items. You receive a 10% discount code."
        } else {
            return "You need to find at least 5 items to receive a discount code."
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
            
            Text("Items found: \(foundCount) / 10")
                .font(.title2)
            
            Text(rewardMessage)
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding()
            
            Text("Online submission simulated successfully.")
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            
            Spacer()
        }
        .padding()
        .navigationTitle("Result")
    }
}

#Preview {
    ResultView(foundCount: 7)
}
