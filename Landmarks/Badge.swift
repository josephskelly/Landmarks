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
        //        Image(systemName: "triangle.fill")
        Path { path in
            let width: CGFloat = 100.0
            let height = width
            path.move(to: CGPoint(x: width * 0.95, y: height * 0.20))
            HexagonParameters.points.forEach {
                path.addLine(
                    to: .init(
                        x: width * $0.useWidth.0 * $0.xFactors.0,
                        y: height * $0.useHeight.0 * $0.yFactors.0
                    )
                )
            }
        }
        .fill(Color.black)
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
            .previewLayout(.fixed(width: 100, height: 100))
    }
}
