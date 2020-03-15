//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Joseph Kelly on 3/9/20.
//  Copyright © 2020 BadMotivator. All rights reserved.
//

import SwiftUI
//import UIKit

struct LandmarkList: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    
                    Text("Favorites Only")
                }
                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle("Landmarks")
            LandmarkListPlaceholder()
        }
        
    }
}
struct LandmarkListPlaceholder: View {
    var body: some View {
        Text("Rotate your device or swipe from the left.")
    }
}
struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone XR", "iPad mini 4"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
//                .environment(\.colorScheme, .dark)
                .environmentObject(UserData())
        }
    }
}
