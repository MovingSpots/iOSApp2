//
//  HuntDetailView.swift
//  iOSApp2
//
//  Created by SELVARAJ THYAGARAJAN on 2026-06-06.
//

import SwiftUI

struct HuntDetailView: View {
    
    // @Binding allows this page to change the selected item
    // and send that update back to HuntListView.
    @Binding var item: HuntItem
    
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                
                Image(systemName: item.isFound ? "camera.fill" : "camera.viewfinder")
                    .font(.system(size: 90))
                    .foregroundColor(item.isFound ? .green : .blue)
                    .padding(.top)
                
                Text(item.businessName)
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                Text(item.category)
                    .font(.headline)
                    .foregroundColor(.secondary)
                
                VStack(alignment: .leading, spacing: 12) {
                    Text("Hidden Item")
                        .font(.headline)
                    
                    Text(item.itemName)
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Text("Clue")
                        .font(.headline)
                    
                    Text(item.clue)
                        .font(.body)
                    
                    Text("Business Prize")
                        .font(.headline)
                    
                    Text(item.prize)
                        .foregroundColor(.purple)
                        .fontWeight(.medium)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(16)
                
                Button {
                    // This simulates taking a photo.
                    // Real camera support can be added in a future version.
                    item.photoTaken = true
                    item.isFound = true
                } label: {
                    Text(item.isFound ? "Photo Taken - Item Found" : "Take Picture / Mark Found")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(item.isFound ? Color.green : Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                
                if item.isFound {
                    Text("Great job! This item has been added to your completed list.")
                        .font(.subheadline)
                        .foregroundColor(.green)
                        .multilineTextAlignment(.center)
                }
            }
            .padding()
        }
        .navigationTitle("Clue Details")
    }
}

#Preview {
    @Previewable @State var sampleItem = HuntData.sampleItems[0]
    HuntDetailView(item: $sampleItem)
}
