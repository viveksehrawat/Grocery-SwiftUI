//
//  Welcome.swift
//  Grocery
//
//  Created by Vivek Sehrawat on 04/09/23.
//

import SwiftUI

struct Welcome: View {
    @State private var isShowingLogin = false
    var body: some View {
        ZStack{
            Image("welcom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            VStack(alignment: .center, spacing: 20){
                Spacer()
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 100)
                Text("Welcome\nto our store")
                    .font(.customfont(.semibold, fontSize: 48))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Text("Get your groceries in as fast as one hour")
                    .font(.customfont(.medium, fontSize: 16))
                    .foregroundColor(.white.opacity(0.7))
                
                
                PrimaryButton(buttonTitle: "Get Started", backgroundColor: .green) {
                    isShowingLogin = true
                }
                .frame(height: 50)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 45, trailing: 20))
            }
            NavigationLink(destination: LoginView(), isActive: $isShowingLogin) {
                                EmptyView()
                            }
        }
        .ignoresSafeArea()
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}
