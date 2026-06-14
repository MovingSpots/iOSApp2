//
//  HuntCardView.swift
//  iOSApp2
//
//  Created by SELVARAJ THYAGARAJAN on 2026-06-06.
//

import SwiftUI

struct HuntCardView: View {
    
    let item: HuntItem
    
    var body: some View {
        HStack(spacing: 16) {
            
            Image(systemName: item.isFound ? "checkmark.seal.fill" : "magnifyingglass.circle.fill")
                .font(.largeTitle)
                .foregroundColor(item.isFound ? .green : .orange)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(item.businessName)
                    .font(.headline)
                
                Text(item.category)
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                Text(item.itemName)
                    .font(.subheadline)
                
                Text(item.isFound ? "Completed" : "Not Found Yet")
                    .font(.caption)
                    .foregroundColor(item.isFound ? .green : .red)
            }
        }
        .padding(.vertical, 6)
    }
}

#Preview {
    HuntCardView(item: HuntData.sampleItems[0])
}
