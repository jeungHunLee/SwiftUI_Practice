//
//  SwiftUI_Tutorials_LandmarksApp.swift
//  SwiftUI_Tutorials_Landmarks
//
//  Created by 이정훈 on 2023/01/02.
//

import SwiftUI

@main
struct SwiftUI_Tutorials_LandmarksApp: App {
    @StateObject private var modelData = ModelData()    //앱이 실행되는 동안 단 헌번 초기화 @StateObject
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)    //subview에서 인스턴스를 사용할 수 있게함
        }
    }
}
