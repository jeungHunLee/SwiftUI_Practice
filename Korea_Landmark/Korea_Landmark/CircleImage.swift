//
//  CircleImage.swift
//  Korea_Landmark
//
//  Created by 이정훈 on 2023/01/02.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("광화문")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
