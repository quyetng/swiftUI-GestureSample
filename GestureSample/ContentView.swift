//
//  ContentView.swift
//  GestureSample
//
//  Created by QN on 9/7/20.
//  Copyright © 2020 QN. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   
    @State private var tapped = false
    
    // create and config the tap gesture
    var tap: some Gesture {
        TapGesture(count: 1) // this require 1 tap
            .onEnded { _ in
                self.tapped = !self.tapped
        } // Add action when gesture is ended
        
    }
    var body: some View {
        
      // Add tap gesture to the circle
        
        Circle().fill(self.tapped ? Color.blue : Color.red)
            .frame(width: 100, height: 100, alignment: .center)
        .gesture(tap)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


