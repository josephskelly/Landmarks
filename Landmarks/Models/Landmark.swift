//
//  Landmark.swift
//  Landmarks
//
//  Created by Joseph Kelly on 3/8/20.
//  Copyright © 2020 BadMotivator. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var park: String
    var category: Category
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case lLakes = "Lakes"
        case rivers = "Rivers"
    }
}
//TODO: Fix bug: "extension must not contain stored properties
//extension Landmark {
//    var image: Image {
//        TODO: Add ImageStore class
//        ImageStore.shared.image(name: imageName)
//    }
//}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
