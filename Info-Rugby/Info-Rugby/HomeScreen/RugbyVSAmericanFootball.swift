//
//  RugbyVSAmericanFootball.swift
//  Info-Rugby
//
//  Created by Seik Oh on 2022/05/03.
//

import SwiftUI

struct RugbyVSAmericanFootball: View {
    var body: some View {
        ScrollView{
            ZStack(alignment: .topLeading) {
                VStack(alignment: .leading) {
                    Text("럭비는 미식축구가 아니다!")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
                    
                    CardNewsFormat(ball: "1. 장비",contents: "미식축구는 풀장비를 한다. \n하지만 럭비는 마우스피스 하나만 입에 물고 경기를 뛴다!", picture: "rugbyvsfootballkit")
                    
                    Divider()
                        .padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 0))
                    Text("2. 공")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(.bottom, 1) //line사이 간격
                    Text("미식축구: 28\n럭비:30cm")
                        .font(.system(size: 14))
                    HStack{
                        Image("football-ball")
                            .padding(.trailing, 40)
                        Image("rugby-ball")
                    }
                    .padding(.leading, 45)
                    
                    Divider()
                        .padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 0))
                    CardNewsFormat(ball: "3. 경기장 크기와 생김새",contents: "미식축구: 10야드(yard)마다 잔디 색이 다르게 되어있다. \n럭비: 잔디에 라인아웃 표시 말고는 없다.", picture: "field")
                       
                    Divider()
                        .padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 0))
                    CardNewsFormat(ball: "4. 경기시간과 인원",contents: "미식축구:  60분동안 11명의 선수로 진행한다. \n럭비: 80분동안 15명의 선수로 진행한다.", picture: "field-rules")
                    
                }
            }
            .frame(maxWidth: 358, maxHeight: .infinity)
        }
        .navigationBarTitle("", displayMode: .inline)
    }
}

struct RugbyVSAmericanFootball_Previews: PreviewProvider {
    static var previews: some View {
        RugbyVSAmericanFootball()
    }
}
