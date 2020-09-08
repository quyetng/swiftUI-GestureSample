//
//  ContentView.swift
//  GestureSample
//
//  Created by QN on 9/7/20.
//  Copyright © 2020 QN. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var angle = Angle(degrees: 45.0)
    
    var rotation: some Gesture {
        RotationGesture().onChanged { (angle) in
            self.angle = angle
        }
    }
    
    var body: some View {
        
      Rectangle()
        .fill(Color.blue)
        .frame(width: 200, height: 200, alignment: .center)
        .rotationEffect(angle)
        .gesture(rotation)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


