//
//  Labels.swift
//  RGBSlider
//
//  Created by Никита Гвоздиков on 15.12.2020.
//

import SwiftUI

struct Labels: View {
    let value: Double
    var body: some View {
        Text("\(lround(value))")
            .frame(width: 34, alignment: .leading)
    }
}
