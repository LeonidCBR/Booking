//
//  MockData.swift
//  Booking
//
//  Created by Яна Латышева on 06.09.2023.
//

import Foundation


struct Endpoints {
    static let hotelURL = "https://run.mocky.io/v3/35e0d18e-2521-4f1b-a575-f0fe366f66e3"
    static let roomsURL = "https://run.mocky.io/v3/f9a38183-6f95-43aa-853a-9c83cbb05ecd"
    static let bookingURL = "https://run.mocky.io/v3/e8868481-743f-4eb2-a0d7-2bc4012275c8"
}

struct Hotel {
    let id: Int
    let name: String
    let adress: String
    let minimalPrice: Int // TODO: JSON - minimal_price
    let priceForIt: String // TODO: JSON price_for_it
    let rating: Int
    let ratingName: String // TODO: JSON rating_name
    let imageURLs: [String] // TODO: JSON image_urls
    let description: String
    let peculiarities: [String]
}

struct MockData {
    static let hotel = Hotel(
        id: 1,
        name: "Лучший пятизвездочный отель в Хургаде, Египет",
        adress: "Madinat Makadi, Safaga Road, Makadi Bay, Египет",
        minimalPrice: 134268,
        priceForIt: "За тур с перелётом",
        rating: 5,
        ratingName: "Превосходно",
        imageURLs: [
            "https://www.atorus.ru/sites/default/files/upload/image/News/56149/Club_Priv%C3%A9_by_Belek_Club_House.jpg",
            "https://deluxe.voyage/useruploads/articles/The_Makadi_Spa_Hotel_02.jpg",
            "https://deluxe.voyage/useruploads/articles/article_1eb0a64d00.jpg" ],
        description: "Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!",
        peculiarities: [
            "Бесплатный Wifi на всей территории отеля",
            "1 км до пляжа",
            "Бесплатный фитнес-клуб",
            "20 км до аэропорта"
        ]
    )
}
