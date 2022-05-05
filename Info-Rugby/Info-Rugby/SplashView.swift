//
//  SplashView.swift
//  Info-Rugby
//
//  Created by Seik Oh on 2022/05/05.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack{
            VStack{
                Image("olympic-rugby")
                Text("Info Rugby")
                    .font(.title2)
                    //.foregroundColor(Color.logoGreen)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
            }
            VStack{
                Spacer()
                Text("V 1.0.0")
                    .fontWeight(.bold)
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
