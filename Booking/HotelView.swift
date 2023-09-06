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
                VStack {
                    Rectangle()
                        .foregroundColor(.cyan)
                        .frame(height: 257)
                        .padding(.top, 0)
                        .padding(.horizontal, 16)
                        .padding(.bottom, 10)

                    Text(hotel?.name ?? "")
                }
                .background(.white)
                .padding(.bottom, 10)

                // Description block
                VStack {
                    Text(hotel?.description ?? "")
                }
                .background(.white)
            }

            // Bottom Bar
            ZStack {
                NavigationLink(destination: RoomView(), label: {
                    Text("К выбору номера")
                })
            }
            .padding(.bottom, 0)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 88, idealHeight: 88, maxHeight: 88)
            .background(Color.white)
        }
/*
        .toolbar {
            ToolbarItem(placement: .bottomBar) {
//                ZStack(alignment: .center) {
                ZStack {
                    NavigationLink(destination: RoomView(), label: {
                        Text("К выбору номера")
                    })
                }
                .padding(.horizontal, 0)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 88)
//                .frame(width: 375, height: 88)
                .background(Color.white)
            }
        }
*/
        .onAppear { getHotel() }
//        .padding()
        .background(Color("Background"))
        .navigationTitle("Отель")
        .navigationBarTitleDisplayMode(.inline)

/*
        ScrollView {
            VStack {
                Text(hotel?.name ?? "")
//                Image(systemName: "globe")
//                    .imageScale(.large)
//                    .foregroundColor(.accentColor)
//                Text("Hello, world!")
                NavigationLink(destination: RoomView(), label: {
                    Text("К выбору номера")
                })
            }
            .onAppear { getHotel() }
            .padding()
            .navigationTitle("Отель")
            .navigationBarTitleDisplayMode(.inline)
        } // ScrollView
*/
    }

    func getHotel() {
        self.hotel = MockData.hotel
    }
}

struct HotelView_Previews: PreviewProvider {
    static var previews: some View {
        HotelView()
    }
}
