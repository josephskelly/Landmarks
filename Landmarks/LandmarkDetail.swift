//
//  ContentView.swift
//  Landmarks
//
//  Created by Joseph Kelly on 3/6/20.
//  Copyright © 2020 BadMotivator. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            CircleImage()
                .offset(y: -150)
                .padding(.bottom, -150)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
        
        
        
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
