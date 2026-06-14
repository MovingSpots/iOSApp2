//
//  HuntListView.swift
//  iOSApp2
//
//  Created by SELVARAJ THYAGARAJAN on 2026-06-06.
//

import SwiftUI

struct HuntListView: View {
    
    // @State stores data that can change on the screen.
    @State private var huntItems = HuntData.sampleItems
    
    // Counts how many items are found.
    var foundCount: Int {
        huntItems.filter { $0.isFound }.count
    }
    
    // Calculates progress percentage.
    var progressValue: Double {
        Double(foundCount) / Double(huntItems.count)
    }
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 12) {
                
                Text("Local Business Scavenger Hunt")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.top)
                
                Text("Find hidden items and unlock local discounts.")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                ProgressView(value: progressValue)
                    .padding(.horizontal)
                
                Text("Found \(foundCount) of \(huntItems.count) items")
                    .font(.headline)
                
                List {
                    ForEach(huntItems.indices, id: \.self) { index in
                        NavigationLink {
                            HuntDetailView(item: $huntItems[index])
                        } label: {
                            HuntCardView(item: huntItems[index])
                        }
                    }
                }
                
                NavigationLink {
                    ResultView(foundCount: foundCount)
                } label: {
                    Text("Submit Results")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(foundCount >= 5 ? Color.green : Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                        .padding(.horizontal)
                }
                .disabled(foundCount < 5)
                
                Text(foundCount < 5 ? "Find at least 5 items to submit." : "You can now submit your results.")
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .padding(.bottom)
            }
            .navigationTitle("iOSApp2")
        }
    }
}

#Preview {
    HuntListView()
}
