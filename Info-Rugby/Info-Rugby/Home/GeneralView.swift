//
//  GeneralView.swift
//  Info-Rugby
//
//  Created by Seik Oh on 2022/05/04.
//

import SwiftUI

struct GeneralView: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                //1
                Text("럭비는 미식축구가 아니다!")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .padding(.bottom, 0.5)
                NavigationLink(destination: RugbyVSAmericanFootball()){
                    Image("general-difference")
                        .padding(.bottom, 24)
                }
                
                //2
                Text("올림픽 봐야 돼! 럭비 어떻게 해?")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .lineSpacing(3)
                    .padding(.bottom, 0.5)
                HStack{
                    NavigationLink(destination: RugbyRules()){
                        Image("general-rules")
                    }
                    NavigationLink(destination: RugbyScore()){
                        Image("general-score")
                    }
                }
                .padding(.bottom, 24)
                
                //3
                Text("럭비는 미식축구가 아니다!")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .padding(.bottom, 0.5)
                NavigationLink(destination: RugbyLeagueUnion()){
                    Image("general-Unionvsleague")
                }
                
                Spacer()
            }
        }
    }
}

struct GeneralView_Previews: PreviewProvider {
    static var previews: some View {
        GeneralView()
    }
}
