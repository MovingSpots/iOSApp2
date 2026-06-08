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
        HStack {
            VStack(alignment: .leading, spacing: 6 ) {
                Text(item.businessName)
                    .font(.headline)
                
                Text(item.itemName)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Text(item.isFound ? "Found" : "Not Found")
                    .font(.caption)
                    .foregroundColor(item.isFound ? .green : .red)
            }
            
            Spacer()
            
            Image(systemName: item.isFound ? "checkmark.circle.fill" : "questionmark.circle")
                .font(.title2)
                .foregroundColor(item.isFound ? .green : .orange)
        }
        .padding(.vertical, 6)
    }
}

#Preview {
    HuntCardView(item: HuntData.sampleItems[0])
}
