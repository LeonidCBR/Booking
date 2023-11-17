//
//  RatingView.swift
//  Booking
//
//  Created by Yana Latysheva on 18.09.2023.
//

import SwiftUI

struct RatingView: View {
    var hotel: Hotel?
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color("RatingBgColor")
                .opacity(0.2)
            
            HStack {
                // TODO: Star icon
                // ...
//                Image(systemName: "circle")
                Image("img-star")
                    .frame(width: 15, height: 15)
                    .padding(.vertical, 7)
                    .padding(.leading, 10)
                    .padding(.trailing, 2)
                
                Text("\(hotel?.rating ?? 0) \(hotel?.ratingName ?? "")")
                    .foregroundColor(Color("RatingColor"))
                    .padding(.vertical, 5)
                    .padding(.trailing, 10)
            }
        }
        .fixedSize()
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView()
    }
}
