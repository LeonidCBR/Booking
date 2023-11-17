//
//  PeculiaritiesView.swift
//  Booking
//
//  Created by Yana Latysheva on 18.09.2023.
//

import SwiftUI

struct PeculiaritiesView: View {
    var hotel: Hotel?
    var columns = [
        GridItem(.flexible()), // size, spacing, alignment
        GridItem(.flexible())
//        GridItem(spacing: 0),
//        GridItem(spacing: 0)
    ]
    
    var body: some View {
        /*
        HStack(spacing: 0) {
            Text(hotel?.peculiarities[0] ?? "")
                .font(.caption)
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
            Text(hotel?.peculiarities[1] ?? "")
                .font(.caption)
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
        }
        HStack(spacing: 0) {
            Text(hotel?.peculiarities[2] ?? "")
                .font(.caption)
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
            Text(hotel?.peculiarities[3] ?? "")
                .font(.caption)
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
        }
        */
        
//        LazyVGrid(columns: columns, alignment: .center, spacing: 0) { // 8
        LazyVGrid(columns: columns, alignment: .leading, spacing: 0) {
            ForEach(hotel?.peculiarities ?? [], id: \.self) { peculiarity in
                ZStack() {
                    Color("BgGray")
//                        .fixedSize()

                    Text(peculiarity)
//                        .lineLimit(0)
                        .font(.caption)
//                        .background(Color("BgGray"))
                        .foregroundColor(Color("TextGray"))
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                }
                .cornerRadius(10)
                .padding(8)
                
//                .fixedSize()
                
//                .fixedSize(horizontal: true, vertical: false)
                .fixedSize(horizontal: false, vertical: true)
                
            }
        }
//        .padding()
        
    }
}

struct PeculiaritiesView_Previews: PreviewProvider {
    static var previews: some View {
        PeculiaritiesView()
    }
}
