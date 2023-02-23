//
//  CategoryHome.swift
//  SwiftUI_Tutorials_Landmarks
//
//  Created by 이정훈 on 2023/02/23.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    var body: some View {
        NavigationView {
            List  {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()    //parent view에 대하여 꽉 차게 배치
                    .frame(height: 200)
                    .clipped()    //프레임을 벗어나는 이미지 제거
                    .listRowInsets(EdgeInsets())    //여백 0로 설정
                //Text(key)
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())    //여백 0로 설정
                
            }
                .navigationTitle("Featured")
        }
        //.scrollContentBackground(.hidden)
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
