//
//  Rectangle.swift
//  RGBSlider
//
//  Created by Никита Гвоздиков on 14.12.2020.
//

import SwiftUI

struct RectangleView: View {
    
    let redValue: Double
    let greenValue: Double
    let blueValue: Double
    
    var body: some View {
        
       
        
        Color(red: redValue / 255, green: greenValue / 255, blue: blueValue / 255)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .frame(height: 200)
    }
}

struct Rectangle_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView(redValue: 200, greenValue: 200, blueValue: 2)
    }
}
