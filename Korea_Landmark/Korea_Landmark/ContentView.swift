//
//  ContentView.swift
//  Korea_Landmark
//
//  Created by 이정훈 on 2023/01/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("광화문")
                    .font(.title)
                    .fontWeight(.bold)
                Text("서울특별시의 역사적 명소")
                    .font(.title3)
                HStack {
                    Text("서울특별시 종로구 효자로 12")
                    Spacer()
                    Text("대한민국")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                
                HStack {
                    Text("리뷰")
                        .font(.title2)
                        .foregroundColor(.black)
                    Spacer()
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star")
                }
                .foregroundColor(.yellow)
                Divider()
                
                VStack {
                    HStack {
                        Text("운영시간")
                            .font(.title2)
                        Spacer()
                        Text("월: 24시간 영업")
                    }
                    HStack {
                        Spacer()
                        VStack {
                            Text("화: 24시간 영업")
                            Text("수: 24시간 영업")
                            Text("목: 24시간 영업")
                            Text("금: 24시간 영업")
                            Text("토: 24시간 영업")
                            Text("일: 24시간 영업")
                        }
                    }
                }
                
                Divider()
                Text("About 광화문")
                    .font(.title2)
                Text("Descriptive text goes here.")
                
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
