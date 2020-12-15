//
//  ContentView.swift
//  RGBSlider
//
//  Created by Никита Гвоздиков on 14.12.2020.
//

import SwiftUI

struct RGBSlider: View {
    
    @State private var redValue: Double = 255
    @State private var greenValue: Double = 255
    @State private var blueValue: Double = 255
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            RectangleView(redValue: redValue,
                          greenValue: greenValue,
                          blueValue: blueValue)
            VStack {
                HStack {
                    Labels(value: redValue)
                    Sliders(value: $redValue, color: .red)
                    TextFields(value: $redValue, showAlert: $showAlert)
                }
                HStack {
                    Labels(value: greenValue)
                    Sliders(value: $greenValue, color: .green)
                    TextFields(value: $greenValue, showAlert: $showAlert)
                    
                }
                HStack {
                    Labels(value: blueValue)
                    Sliders(value: $blueValue, color: .blue)
                    TextFields(value: $blueValue, showAlert: $showAlert)
                    
                }
            }
            Spacer()
        }.padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RGBSlider()
    }
}
