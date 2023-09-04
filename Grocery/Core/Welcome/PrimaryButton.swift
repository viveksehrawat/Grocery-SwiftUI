//
//  PrimaryButton.swift
//  Grocery
//
//  Created by Vivek Sehrawat on 04/09/23.
//


import SwiftUI

struct PrimaryButton: View {
     
    let buttonTitle: String
    let backgroundColor: Color
    let action: () -> Void

    
    var body: some View {
        
        Button {
            action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 7)
                    .foregroundColor(backgroundColor)
                Text(buttonTitle)
                    .font(.custom("Gilroy-SemiBold", size: 20))
                    .foregroundColor(.white)
            }
        }
    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(buttonTitle: "Log in", backgroundColor: .blue){
            
        }
    }
}
