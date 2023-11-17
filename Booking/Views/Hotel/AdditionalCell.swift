//
//  AdditionalCell.swift
//  Booking
//
//  Created by Yana Latysheva on 17.11.2023.
//

import SwiftUI

struct AdditionalCell: View {
    let imageName: String
    let title: String
    let subtitle: String
    
    var body: some View {
        HStack {
            Image(imageName)
                .font(.headline)
                .imageScale(.large)
                .foregroundStyle(.pink)
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                Text(subtitle)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            Spacer()
            Image(systemName: "chevron.right")
        }
        .listRowBackground(Color("BgGray"))
//        .listRowBackground(Color.green)
    }
}

#Preview {
    AdditionalCell(imageName: "", title: "", subtitle: "")
}
