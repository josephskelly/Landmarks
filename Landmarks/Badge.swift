//
//  Badge.swift
//  Landmarks
//
//  Created by Joseph Kelly on 3/13/20.
//  Copyright © 2020 BadMotivator. All rights reserved.
//

import SwiftUI

struct Badge: View {
    static let rotationCount = 6
    var badgeSymbols: some View {
        ForEach(0..<Badge.rotationCount) { i in
             RotatedBadgeSymbol(
                angle: .degrees(Double(i) / Double(Badge.rotationCount) * 360.0)
            )
        }.opacity(0.5)
       
    }
    var body: some View {
        ZStack {
            BadgeBackground()
            GeometryReader { geometry in
                self.badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometry.size.width / 2, y: (3.0 / 4.0) * geometry.size.height)
            }
        }
    .scaledToFit()
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
        //            .previewLayout(.sizeThatFits)
    }
}
