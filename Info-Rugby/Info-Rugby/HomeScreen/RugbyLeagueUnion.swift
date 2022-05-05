//
//  RugbyLeagueUnion.swift
//  Info-Rugby
//
//  Created by Seik Oh on 2022/05/03.
//

import SwiftUI

struct RugbyLeagueUnion: View {
    var body: some View {
        ScrollView{
            ZStack(alignment: .topLeading) {
                VStack(alignment: .leading){
                    HStack{
                        Text("럭비 리그 VS 럭비 유니온")
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                        Spacer()
                    }
                    Group{ //1
                        Text("럭비는 리그와 유니온에 따라 규칙과 점수산출이 조금 다르다. \n다만, 대부분 “유니온”의 규칙을 따른다.")
                            .font(.system(size: 14))
                            .padding(.bottom, 1) //line사이 간격
                    }
                    .padding(.bottom, 15)
                    Group{
                        Image("Rugby-Union")
                            .resizable()
                        Image("Rugby-League")
                            .resizable()
                    }
                    Spacer()
                }
                .frame(maxWidth: 358, maxHeight: .infinity)
            }
        }
        .navigationBarTitle("", displayMode: .inline)
    }
}

struct RugbyLeagueUnion_Previews: PreviewProvider {
    static var previews: some View {
        RugbyLeagueUnion()
    }
}
