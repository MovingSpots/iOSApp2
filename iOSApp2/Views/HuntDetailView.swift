//
//  HuntDetailView.swift
//  iOSApp2
//
//  Created by SELVARAJ THYAGARAJAN on 2026-06-06.
//

import SwiftUI

struct HuntDetailView: View {
    
    //  @Binding allows this sreen to update the item in HuntListView.
    @Binding var item: HuntItem
    
    var body: some View {
        VStack(spacing: 24) {
            
            Image(systemName: item.isFound ? "camera.fill" : "camera")
                .font(.system(size: 80))
                .foregroundColor(item.isFound ? .green : .blue)
                .padding()
            
            Text(item.businessName)
                .font(.title2)
                .fontWeight(.bold)
            
            Text("Hidden Item: \(item.itemName)")
                .font(.headline)
            
            Text("Clue")
                .font(.title3)
                .fontWeight(.semibold)
            
            Text(item.clue)
                .multilineTextAlignment(.center)
                .padding()
            
            Text("Prize: \(item.prize)")
                .font(.headline)
                .foregroundColor(.purple)
            
            Button {
                //  This simulates taking a photo inside the app.
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
            .padding(.horizontal)
            
            Spacer()
        }
        .padding()
        .navigationTitle("Clue Details")
    }
}

#Preview {
    @Previewable @State var sampleItem = HuntData.sampleItems[0]
    HuntDetailView(item: $sampleItem)
}
