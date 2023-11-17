//
//  SuccessView.swift
//  Booking
//
//  Created by Яна Латышева on 04.09.2023.
//

import SwiftUI

struct SuccessView: View {
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(Color("Background"))
                    .frame(width: 94, height: 94)
                Image("img-party-popper")
                    .resizable()
                    .aspectRatio(1.0, contentMode: .fit)
                    .frame(width: 44, height: 44)
            }
            .padding(.top, 122)
            .padding(.bottom, 26)
            Text("Ваш заказ принят в работу")
                .fontWeight(.bold)
                .padding(.bottom, 20)
            // TODO: Make random the # order
            Text("Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.")
                .padding(.horizontal, 23)
                .multilineTextAlignment(.center)

            // TODO: Dismiss views
            //                NavigationLink(destination: ContentView()) {
            //                    Text("Супер!")
            //                }

            Spacer()
            Button {
                print("DEBUG: Dismiss views.")
//                (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first?.rootViewController?.dismiss(animated: true)
            } label: {
                Text("Супер!")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .font(.system(size: 18))
                    .padding()
                    .foregroundColor(.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.white, lineWidth: 2)
                    )
            }
            .background(Color.accentColor)
            .cornerRadius(25)
            .padding(.horizontal, 16)
            .padding(.bottom, 34)
        }
        .navigationTitle("Заказ оплачен")
    }
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView()
    }
}
