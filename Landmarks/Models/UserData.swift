//
//  UserData.swift
//  Landmarks
//
//  Created by Joseph Kelly on 3/12/20.
//  Copyright © 2020 BadMotivator. All rights reserved.
//

import SwiftUI
//import Combine //is imported in the demo. not sure why

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
