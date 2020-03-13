//
//  Badge.swift
//  Landmarks
//
//  Created by Joseph Kelly on 3/13/20.
//  Copyright © 2020 BadMotivator. All rights reserved.
//

import SwiftUI

struct Badge: View {
    var body: some View {
        Image(systemName: "triangle.fill")
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
            .previewLayout(.fixed(width: 100, height: 100))
    }
}
