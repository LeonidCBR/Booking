//
//  RoomView.swift
//  Booking
//
//  Created by Яна Латышева on 04.09.2023.
//

import SwiftUI

struct RoomView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    Text("Room")
                    NavigationLink(destination: BookingView()) {
                        Text("Выбрать номер")
                    }
                }
                /*
                .navigationTitle("Steigenberger Mak")
                .navigationBarBackButtonHidden(true)
                // .toolbar(.hidden, for: .navigationBar)
                // .toolbar(content: navigationbarlea)
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            dismiss()
                        }, label: {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.black)
                            //                            .imageScale(.large)
                        })
                    }
                }
                */
            }
            .background(Color("Background"))
        }
        .onAppear { getRoom() }
        .navigationTitle("Room") // TODO: room.name
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                })
            }
        }
    }
    
    func getRoom() {
        // TODO: fetch data
        // self.room = MockData.room
        print("DEBUG: Get mock data...")
    }
}

struct RoomView_Previews: PreviewProvider {
    static var previews: some View {
        RoomView()
    }
}
