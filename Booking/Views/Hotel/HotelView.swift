//
//  HotelView.swift
//  Booking
//
//  Created by Яна Латышева on 04.09.2023.
//

import SwiftUI

struct HotelView: View {

    @State var hotel: Hotel?

    var body: some View {
        VStack {
            ScrollView {
                // Hotel block with images
                VStack(alignment: .leading, spacing: 16) {
                    // TODO: Implement
                    // Carousel with images
                    Rectangle()
                        .cornerRadius(25)
                        .foregroundStyle(.bgGray)
                        .frame(height: 257)
                        .padding(.horizontal, 16)
                        
//                        .padding(.bottom, 16)

                    RatingView(hotel: hotel)
                        .padding(.leading, 16)
                        .padding(.bottom, 8)
                    
                    Text(hotel?.name ?? "")
                        .font(.system(size: 22, weight: .semibold))
                        .padding(.leading, 16)
                        .padding(.bottom, 8)
                    
                    Text(hotel?.adress ?? "")
                        .font(.caption)
                        .foregroundColor(.accentColor)
                        .padding(.leading, 16)
//                        .padding(.bottom, 16)
                    
                    HStack(alignment: .bottom) {
                        
                        // TODO: Formatting
                        
                        Text("от \(hotel?.minimalPrice ?? 0) ₽")
                            .font(.title)
                            .padding(.leading, 16)
                            .padding(.bottom, 16)
                        Text("\(hotel?.priceForIt.lowercased() ?? "")")
                            .foregroundColor(Color("TextGray"))
                            .padding(.leading, 8)
                            .padding(.bottom, 19)
                    }
                    
                }
                .background(.white)
                .padding(.bottom, 8)

                // Description block
                VStack(alignment: .leading, spacing: 16) {
                    Text("Об отеле")
                        .font(.title3)
                        .padding(.top, 16)
                        .padding(.horizontal, 16)
                    
                    // Peculiarities
                    PeculiaritiesView(hotel: hotel)
/*
                    HStack(spacing: 0) { // 8
                        ForEach(hotel?.peculiarities ?? [], id: \.self) { peculiarity in
                            Text(peculiarity)
                                .font(.caption)
                                .background(Color("BgGray"))
                                .foregroundColor(Color("TextGray"))
                                .padding(.horizontal, 10)
                                .padding(.vertical, 5)
                        }
                    }
*/
                    
                    Text(hotel?.description ?? "")
                        .padding(.horizontal, 16)
//                        .padding(.bottom, 16)
                    
                    AdditionalsView()
//                        .padding(.all, 10)
                    Spacer(minLength: 16)
                }
                .background(.white)
            }
//            .padding(.bottom, 12)
            .background(Color("Background"))

            // Bottom Bar
            ZStack {
                NavigationLink(destination: RoomView(), label: {
                    Text("К выбору номера")
                        .frame(maxWidth: .infinity)
                        .font(.system(size: 18))
                        .padding()
                        .foregroundColor(.white)
                        // Get a black border of the button
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 25)
//                                .stroke(Color.black, lineWidth: 4)
//                        )
                })
                .background(Color.accentColor)
                .cornerRadius(25)
                .padding(.horizontal, 16)
//                .padding(.bottom, 34)
            }
            .frame(height: 88)
            .frame(maxWidth: .infinity)
            .background(Color.white)
        }
        .onAppear { getHotel() }
        .navigationTitle("Отель")
        .navigationBarTitleDisplayMode(.inline)
    }

    func getHotel() {
        // TODO: fetch data
        self.hotel = MockData.hotel
    }
}

struct HotelView_Previews: PreviewProvider {
    static var previews: some View {
        HotelView()
    }
}
