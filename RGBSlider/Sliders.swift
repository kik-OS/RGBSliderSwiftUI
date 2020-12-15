//
//  Sliders.swift
//  RGBSlider
//
//  Created by Никита Гвоздиков on 15.12.2020.
//

import SwiftUI

struct Sliders: View {
    @Binding var value: Double
    let color: Color
    var body: some View {
        Slider(value: $value, in: 0...255, step: 1)
            .accentColor(color)
    }
}
