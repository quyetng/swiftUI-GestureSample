//
//  ContentView.swift
//  GestureSample
//
//  Created by QN on 9/7/20.
//  Copyright © 2020 QN. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   
    @GestureState var isDectectDragging = false
    @State var isDragging = false
    // create and config the gesture
    var drag: some Gesture {
        
     DragGesture()
        .onChanged({ (_) in
            self.isDragging = true
        })
        .onEnded { (_) in
            self.isDragging = false
        }
        
    }
    var body: some View {
        
      // Add the gesture to the circle
        
       Circle()
        .fill(self.isDragging ? Color.red : Color.blue)
        .frame(width: 100, height: 100, alignment: .center)
        .gesture(drag)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


