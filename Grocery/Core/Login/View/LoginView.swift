//
//  ContentView.swift
//  Grocery
//
//  Created by Vivek Sehrawat on 04/09/23.
//

import SwiftUI
import CountryPickerView

struct LoginView: View {
    @State private var txtMobile :String = ""
    @State private var isShowPicker: Bool = false
    @State var countryObj: Country?
    
    
    var body: some View {
        ZStack {
            Image("sign_in_top")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                .ignoresSafeArea()

                
            VStack(alignment: .leading,spacing: 10) {
               Spacer()
                Text("Get your groceries")
                    .font(.customfont(.semibold, fontSize: 26))
                Text("with nectar")
                    .font(.customfont(.semibold, fontSize: 26))
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 25)
                HStack{
                    Button{
                        isShowPicker = true
                    }label: {
                        
                        Image("")
                        Text("+91")
                            .font(.customfont(.medium, fontSize: 18))
                            .foregroundColor(.primaryText)
                    }
                    TextField("Enter Mobile", text: $txtMobile)

                }
Divider()
                PrimaryButton(buttonTitle: "Go To Home", backgroundColor: .blue) {
                    
                }
                .frame(height: 50)
                PrimaryButton(buttonTitle: "Continue with Facebook", backgroundColor: .blue) {
                    
                }
                .frame(height: 50)
                
            }
            .padding(.horizontal, 10)
        }
        .sheet(isPresented: $isShowPicker, content: {
            CountryPickerUI(country: $countryObj)
        })
        .navigationBarBackButtonHidden(true)
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
