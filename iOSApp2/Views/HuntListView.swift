//
//  HuntListView.swift
//  iOSApp2
//
//  Created by SELVARAJ THYAGARAJAN on 2026-06-06.
//

import SwiftUI

struct HuntListView: View {
    
    // @State allows the screen to update when item status changes.
    @State private var huntItems = HuntData.sampleItems
    
    //  This counts how many items were found.
    var foundCount: Int {
        huntItems.filter {$0.isFound}.count
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                
                Text("Local Business Scavenger Hunt")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.top)
                
                Text("Found \(foundCount) of 10 found")
                    .font(.headline)
                    .padding(.bottom)
                
                List {
                    ForEach(huntItems.indices, id: \.self) { index in NavigationLink {
                        HuntDetailView(item: $huntItems[index])
                    } label:{
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
                        .padding()
                }
                .disabled(foundCount < 5)
            }
            .navigationTitle("iOSApp2")
        }
    }
}

#Preview {
    HuntListView()
}
