//
//  ContentView.swift
//  Rotation3DEffectXY&ZAxes
//
//  Created by ramil on 15.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var degrees = -65.0
    var body: some View {
        VStack(spacing: 10) {
            Text("Rotation 3D Effect").font(.largeTitle)
            Text("X, Y & Z Axes").font(.title).foregroundColor(.gray)
            Text("Now it gets a little more complicated to think on all 3 axes. Plot the vector using X, Y and Z values.")
            
            Text("axis: (x: 2.0, y: 4.0, z: 3.0)")
            Image("XYZ")
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.yellow)
                .opacity(0.7)
                .overlay(
                    Text("Move slider to adjust rotation")
                        .font(.largeTitle).bold()
            )
                .rotation3DEffect(Angle(degrees: degrees), axis: (x: 2.0, y: 4.0, z: 3.0))
            
            Slider(value: $degrees, in: -180...180, step: 1).padding()
            
            Text("Crazy!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
