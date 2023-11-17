//
//  BookingView.swift
//  Booking
//
//  Created by Яна Латышева on 04.09.2023.
//

import SwiftUI

struct BookingView: View {

    let price: Int = 0

    var body: some View {
        ScrollView {
            VStack {
                Text("Booking")
                NavigationLink(destination: SuccessView()) {
                    // TODO: Use currency sign
                    Text("Оплатить \(price) Р")
                }
            }
            .navigationTitle("Бронирование")
        }
    }
}

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView()
    }
}
