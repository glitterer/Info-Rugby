//
//  SplashView.swift
//  Info-Rugby
//
//  Created by Seik Oh on 2022/05/05.
//

import SwiftUI

struct SplashView: View {
    @State var isActive:Bool = false
    
    var body: some View {
        VStack {
            if self.isActive {
                
            } else {
                ZStack{
                    Color.white
                        .ignoresSafeArea()
                    VStack{
                        Image("olympic-rugby")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250, height: 270  )
                        
                        Text("Rugbyiest")
                            .font(.custom("Helvetica", size:40))
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding()
                            .cornerRadius(8)
                    }
                    VStack{
                        Spacer()
                        Text("V.1.0.0")
                    }
                }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
