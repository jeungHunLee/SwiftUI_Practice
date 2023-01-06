//
//  LandmarkDetail.swift
//  SwiftUI_Tutorials_Landmarks
//
//  Created by 이정훈 on 2023/01/06.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            VStack {
                MapView(coordinate: landmark.locationCoordinate)
                    .ignoresSafeArea(edges: .top)    //safearea까지 표시
                    .frame(height: 300)    //height
                
                CircleImages(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    Text(landmark.name)    //text content
                        .font(.title)    //text font
                    HStack {    //horizonal stack
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    
                    Divider()
                    Text("About \(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                }
                .padding()
            }
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
