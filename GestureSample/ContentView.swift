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
    var body: some View {
        
        let tap = TapGesture()
            .onEnded{_ in
                print("View tapped")}

        return VStack {
            Circle()
                .fill(Color.blue)
                .frame(width: 100, height: 100, alignment: .center)
                .gesture(tap)
            Text("Hello, World!")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
