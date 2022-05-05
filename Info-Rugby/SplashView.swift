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
                .resizable()
                .frame(width: 250, height: 270, alignment: .center)
            Text("Infor Rugby")
                .font(.title)
                .fontWeight(.bold)

        }
            VStack{
                Spacer()
                Text("V.1.0.0")
                    .font(.system(size: 18))
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
