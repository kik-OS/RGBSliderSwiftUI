//
//  ContentView.swift
//  RGBSlider
//
//  Created by Никита Гвоздиков on 14.12.2020.
//

import SwiftUI

struct RGBSlider: View {
    
    @State private var redValue: Double = 0
    @State private var greenValue: Double = 100
    @State private var blueValue: Double = 255
    @State private var stringValue: String = ""
    
    var body: some View {
        VStack {
            RectangleView(redValue: redValue,
                          greenValue: greenValue,
                          blueValue: blueValue)
            VStack {
                HStack {
                    Labels(value: redValue)
                    Sliders(value: $redValue)
                    TextFields(value: $redValue)
                }
                HStack {
                    Labels(value: greenValue)
                    Sliders(value: $greenValue)
                    TextFields(value: $greenValue)
                    
                }
                HStack {
                    Labels(value: blueValue)
                    Sliders(value: $blueValue)
                    TextFields(value: $blueValue)
                    
                }
            }
            Spacer()
        }.padding()
    }
}


struct TextFields: View {
    @Binding var value: Double
    var body: some View {
        TextField("", value: $value, formatter: NumberFormatter())
            .frame(width: 46, alignment: .trailing)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .keyboardType(.numberPad)
    }
}


struct Sliders: View {
    @Binding var value: Double
    var body: some View {
        Slider(value: $value, in: 0...255, step: 1)
    }
}


struct Labels: View {
    let value: Double
    var body: some View {
        Text("\(lround(value))")
            .frame(width: 46, alignment: .leading)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RGBSlider()
    }
}
