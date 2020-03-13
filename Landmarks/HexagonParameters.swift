//
//  HexagonParameters.swift
//  Landmarks
//
//  Created by Joseph Kelly on 3/13/20.
//  Copyright © 2020 BadMotivator. All rights reserved.
//

import SwiftUI

struct HexagonParameters {
    struct Segment {
        let usewidth: (CGFloat, CGFloat, CGFloat)
        let xFactors: (CGFloat, CGFloat, CGFloat)
        let useHeight: (CGFloat, CGFloat, CGFloat)
        let yFactors: (CGFloat, CGFloat, CGFloat)
    }
    static let adjustment: CGFloat = 0.85
    static let points = [
        Segment(
            usewidth: (1.00, 1.00, 1.00),
            xFactors: (0.60, 0.40, 0.50),
            useHeight: (1.00, 1.00, 0.00),
            yFactors: (0.05, 0.05, 0.00)
        ),
        Segment(
            usewidth: (1.00, 1.00, 0.00),
            xFactors: (0.05, 0.00, 0.00),
            useHeight: (1.00, 1.00, 1.00),
            yFactors: (0.20 + adjustment, 0.30 + adjustment, 0.25 + adjustment)
        ),
        Segment(
            usewidth: (1.00, 1.00, 0.00),
            xFactors: (0.00, 0.05, 0.00),
            useHeight: (1.00, 1.00, 1.00),
            yFactors: (0.70 - adjustment, 0.80 - adjustment, 0.75 - adjustment)
        ),
        Segment(
            usewidth: (1.00, 1.00, 1.00),
            xFactors: (0.40, 0.60, 0.50),
            useHeight: (1.00, 1.00, 1.00),
            yFactors: (0.95, 0.95, 1.00)
        ),
        Segment(
            usewidth: (1.00, 1.00, 1.00),
            xFactors: (0.95, 1.00, 1.00),
            useHeight: (1.00, 1.00, 1.00),
            yFactors: (0.80 - adjustment, 0.70 - adjustment, 0.75 - adjustment)
        ),
        Segment(
            usewidth: (1.00, 1.00, 1.00),
            xFactors: (1.00, 0.95, 1.00),
            useHeight: (1.00, 1.00, 1.00),
            yFactors: (0.30 + adjustment, 0.20 + adjustment, 0.25 + adjustment)
        ),
    ]
}
