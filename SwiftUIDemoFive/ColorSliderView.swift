//
//  ColorSliderView.swift
//  SwiftUIDemoFive
//
//  Created by Fahim Rahman on 16/7/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import SwiftUI

struct ColorSliderView: View {
    
    @Binding var colorValue: Double
    
    var colorLabel: String
    
    var body: some View {
        
        VStack {
            
            Slider(value: $colorValue, in: 0...255)
        
            Text("\(colorLabel): \(Int(colorValue))")
                .foregroundColor(.black)
                .fontWeight(.heavy)
            
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSliderView(colorValue: Binding.constant(0), colorLabel: "Label")
    }
}
