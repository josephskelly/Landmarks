//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Joseph Kelly on 3/9/20.
//  Copyright © 2020 BadMotivator. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @State var showFavoritesOnly = true
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites Only")
                }.accentColor(.blue) // doesn't work. fixed in xcode 11 beta 4?
                ForEach(landmarkData) { landmark in
                    if !self.showFavoritesOnly || landmark.isFavorite {
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
        }
    }
}
