//
//  circleImage.swift
//  kitt_help
//
//  Created by Helén Persson on 31/10/2020.
//  Copyright © 2020 Helén Persson. All rights reserved.
//

import SwiftUI

struct circleImage: View {
    var body: some View {
        Image("pexels-photo-5788151")
            .resizable()
            .scaleEffect(1)
            .frame(width: 300, height: 300)
            .clipShape(Circle())
        .overlay(
            Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 10)
        
    }
}

struct circleImage_Previews: PreviewProvider {
    static var previews: some View {
        circleImage()
    }
}
