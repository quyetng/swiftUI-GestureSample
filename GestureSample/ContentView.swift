//
//  ContentView.swift
//  GestureSample
//
//  Created by QN on 9/7/20.
//  Copyright © 2020 QN. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @GestureState var magnifyBy = CGFloat(1.0)
   
    var magnification: some Gesture {
        MagnificationGesture()
            .updating($magnifyBy) { (currentState, gestureState, transaction) in
                gestureState = currentState
        }
    }
    var body: some View {
        
      Circle()
        .fill(Color.green)
        .frame(width: 100 * magnifyBy, height: 100 * magnifyBy, alignment: .center)
        .gesture(magnification)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


