//
//  ContentView.swift
//  GestureSample
//
//  Created by QN on 9/7/20.
//  Copyright © 2020 QN. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   
    @GestureState var isDetectingLongPress = false
    @State var completedLongPress = false
    
    // create and config the long press gesture
    var longPress: some Gesture {
      LongPressGesture(minimumDuration: 3)
        .updating($isDetectingLongPress, body: { (currentState, gestureState, transaction) in
            // update gestureState to currentState
            gestureState = currentState
            transaction.animation = Animation.easeIn(duration: 2.0)
        })
        .onEnded { (finished) in
            self.completedLongPress = finished
        }
        
    }
    var body: some View {
        
      // Add tap gesture to the circle
        
        Circle().fill(self.isDetectingLongPress ? Color.red : (self.completedLongPress ? Color.green : Color.blue))
            .frame(width: 100, height: 100, alignment: .center)
        .gesture(longPress)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


