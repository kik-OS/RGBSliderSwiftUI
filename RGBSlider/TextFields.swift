//
//  TextFields.swift
//  RGBSlider
//
//  Created by Никита Гвоздиков on 15.12.2020.
//

import SwiftUI
struct TextFields: View {
    @Binding var value: Double
    @Binding var showAlert: Bool
    
    var body: some View {
        
        TextField("", value: $value, formatter: NumberFormatter(), onCommit:  {
            if value > 255 {
                value = 0
                showAlert = true
            }
        })
        .frame(width: 46)
        .multilineTextAlignment(.trailing)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .alert(isPresented: $showAlert, content: {
            Alert(title: Text("Wrong format"),
                  message: Text("Enter a value from 0 to 255"))
        })
    }
}
