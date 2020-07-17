//
//  ContentView.swift
//  SwiftUIDemoFive
//
//  Created by Fahim Rahman on 16/7/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import SwiftUI

// main content view
struct ContentView: View {
    
    @State private var red: Double = 0
    @State private var green: Double = 0
    @State private var blue: Double = 0
    
    @State private var opacity: Double = 1
    
    var body: some View {
        
        ZStack {
            
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Spacer()
                Rectangle()
                    .frame(width: 230, height: 230)
                    .foregroundColor(Color(.displayP3, red: red/255, green: green/255, blue: blue/255, opacity: opacity/1))
                    .shadow(radius: 1)
                    .clipShape(Circle())
                
               Spacer()
                
                ColorSliderView(colorValue: $red, colorLabel: "RED")
                    .accentColor(Color.red)

                ColorSliderView(colorValue: $green, colorLabel: "GREEN")
                    .accentColor(Color.green)

                ColorSliderView(colorValue: $blue, colorLabel: "BLUE")
                    .accentColor(Color.blue)

                OpacitySliderView(opacityValue: $opacity, opacityLabel: "OPACITY")
                    .accentColor(Color.gray)
            }
            .padding()
        }
    }
}


// this is for preview

struct previews: PreviewProvider {
    
    static var previews: some View {
        
        ContentView()
    }
}

