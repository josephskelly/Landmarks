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
        List(landmarkData, id: \.id) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
