//
//  ContentView.swift
//  Booking
//
//  Created by Яна Латышева on 04.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        // TODO: Consider to use NavigationStack
        NavigationView { // This is deprecated
            HotelView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
