//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Joseph Kelly on 3/9/20.
//  Copyright © 2020 BadMotivator. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            LandmarkListPlaceholder()
        .navigationBarTitle("Landmarks")
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
