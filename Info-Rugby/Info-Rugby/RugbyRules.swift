//
//  RugbyRules.swift
//  Info-Rugby
//
//  Created by Seik Oh on 2022/05/03.
//

import SwiftUI

struct RugbyRules: View {
    var body: some View {
        ScrollView{
        ZStack(alignment: .topLeading) {
            VStack(alignment: .leading){
                HStack{
                    Text("규칙")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                    Spacer()
                }
                RugbyRulesFormat(picture: "field", contents: "한쪽 팀에서 상대진영으로 공을 차면서 시작 (kick-off) ")
                

                Spacer()
            }
            .frame(maxWidth: 358, maxHeight: .infinity)
        }
        }
    .navigationBarTitle("", displayMode: .inline)
    }
}

struct RugbyRules_Previews: PreviewProvider {
    static var previews: some View {
        RugbyRules()
    }
}
