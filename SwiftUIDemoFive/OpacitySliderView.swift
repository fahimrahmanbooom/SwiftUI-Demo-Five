//
//  OpacitySliderView.swift
//  SwiftUIDemoFive
//
//  Created by Fahim Rahman on 16/7/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import SwiftUI

struct OpacitySliderView: View {
    
    @Binding var opacityValue: Double
    
    var opacityLabel: String
    
    var body: some View {
        
        VStack {
            
            Slider(value: $opacityValue, in: 0...1)
            
            Text("\(opacityLabel): \(Double(opacityValue),specifier: "%.2f")")
                .foregroundColor(.black)
                .fontWeight(.heavy)
        }
    }
}

struct OpacitySliderView_Previews: PreviewProvider {
    static var previews: some View {
        OpacitySliderView(opacityValue: Binding.constant(1), opacityLabel: "Label")
    }
}
