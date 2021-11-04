//
//  ContentView.swift
//  knitt_help
//
//  Created by Helén Persson on 31/10/2020.
//  Copyright © 2020 Helén Persson. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {
            circleImage()
            //.padding()
                
            VStack{
                Text("Calculate increase or decrease for knitting")
               
                VStack {
                    calculations()

                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


