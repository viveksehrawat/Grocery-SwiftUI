//
//  CountryPickerUI.swift
//  Grocery
//
//  Created by Vivek Sehrawat on 05/09/23.
//

import SwiftUI
import CountryPickerView

struct CountryPickerUI: UIViewRepresentable{
    @Binding var country: Country?
    
    class Coordinator: NSObject, CountryPickerViewDelegate{
        var parent: CountryPickerUI
        init(_ parent: CountryPickerUI) {
            self.parent = parent
        }
        
        func countryPickerView(_ countryPickerView: CountryPickerView, didSelectCountry country: Country) {
            parent.country = country
        }
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {

    }
    
    
    func makeUIView(context: Context) -> some UIView {
        let countryPicker = CountryPickerView()
        countryPicker.setCountryByCode("IN")
        countryPicker.delegate = context.coordinator
        return countryPicker
    }
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
}








