//
//  AdditionalView.swift
//  Booking
//
//  Created by Yana Latysheva on 18.09.2023.
//

import SwiftUI

struct AdditionalsView: View {
    var body: some View {
        List {
            
            AdditionalCell(imageName: "img-emoji-happy", title: "Удобства", subtitle: "Самое необходимое")
            AdditionalCell(imageName: "img-tick-square", title: "Что включено", subtitle: "Самое необходимое")
            AdditionalCell(imageName: "img-close-square", title: "Что не включено", subtitle: "Самое необходимое")
            
            // TODO: Consider to use struct AdditionalStuff and static additionals
            
//            Text("Удобства")
//            Text("Что включено")
//            Text("Что не включено")
        }
        .cornerRadius(25)
        .frame(height: 184)
//        .frame(maxHeight: .infinity)
//        .frame(height: 250)
        .scrollContentBackground(.hidden)
        .padding(.horizontal, 16)
        .listStyle(.plain)
//        .background(Color.red) // this is a padding background
//        .lineSpacing(50)
//        .safeAreaInset(edge: .top, spacing: 10, content: {})
//        .listRowInsets(.init(top: 20, leading: 20, bottom: 20, trailing: 20))
//        .frame(maxWidth: .infinity)
        .scrollDisabled(true)
    }
}

struct AdditionalView_Previews: PreviewProvider {
    static var previews: some View {
        AdditionalsView()
    }
}
