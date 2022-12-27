//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by egor aleksandrovich on 26.12.2022.
//

import UIKit

struct Place {
    
    var name: String
    var location: String?
    var type: String?
    var restorantImage: String?
    var image: UIImage?
    
    
    static let restaurantNames = ["Burger Heroes", "Kitchen", "Bonsai", "Дастархан", "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes", "Speak Easy", "Morris Pub", "Вкусные истории", "Классик", "Love&Life", "Шок", "Бочка"]
    
    static func getPlaces() -> [Place] {
        
        var places = [Place]()
        
        for place in restaurantNames {
            places.append(Place(name: place, location: "MInsk", type: "Ресторан", restorantImage: place, image: nil))
        }
        
        return places
    }
}
