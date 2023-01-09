//
//  LandmarkList.swift
//  SwiftUI_Tutorials_Landmarks
//
//  Created by 이정훈 on 2023/01/06.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    //모든 view에서 읽을수 있는 @EnvironmentObject 속성, 값이 바뀔때 view 자동 update
    @State private var showFavoriteOnly: Bool = false
    //@State로 선언된 프로퍼티는 값이 변경되면 view를 다시 생성
    
    var filterdLandmarks: [Landmark] {    //연산 프로퍼티 읽기 전용
        modelData.landmarks.filter{ landmark in (landmark.isFavorite || !showFavoriteOnly ) }
    }
    
    var body: some View {
        NavigationView {
            /*List(filterdLandmarks) { landmark in
                NavigationLink {    //destination
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")*/
            List {
                Toggle(isOn: $showFavoriteOnly) {
                    //State 프로퍼티에 접근(변경)하기 위한 $ prefix
                    Text("Favorite only")
                }
                
                //ForEach를 통해 배열 요소의 view를 생성한다.
                ForEach(filterdLandmarks) {landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                    .navigationTitle("Landmarks")
                }
            }
        }
    }
}
 
struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
