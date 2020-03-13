//
//  ContentView.swift
//  Landmarks
//
//  Created by Joseph Kelly on 3/6/20.
//  Copyright © 2020 BadMotivator. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var userData: UserData
    var landmark: Landmark
    var landmarkIndex: Int {
        userData.landmarks.firstIndex(where: { $0.id == landmark.id})!
    }
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            
            CircleImage(image: landmark.image)
                .offset(y: -150)
                .padding(.bottom, -150)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    Spacer()
                    Button(action: {self.userData.landmarks[self.landmarkIndex].isFavorite.toggle()})
                    {
                        if self.userData.landmarks[landmarkIndex].isFavorite {
                            Image(systemName: "star.fill")
                                .imageScale(.large)
                                .foregroundColor(.yellow)
                        } else {
                            Image(systemName: "star")
                                .foregroundColor(.gray)
                                .imageScale(.large)
                        }
                    }
                }
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
        
        
        
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
            .environmentObject(UserData())
    }
}
