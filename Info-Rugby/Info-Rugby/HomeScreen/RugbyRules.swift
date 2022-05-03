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
                    
                    Group{
                        RugbyRulesFormat(picture: "kickoff", contents: "한쪽 팀에서 상대진영으로 공을 차면서 시작 (kick-off)")
                        RugbyRulesFormat(picture: "forward", contents: "공을 들고 앞으로 달리기, 공을 앞으로 차기, 그리고 패스가 허용된다. 패스는 무조건 뒤+옆으로만 줄 수 있다.")
                        RugbyRulesFormat(picture: "tackle", contents: "공을 가진 사람을 태클 할 수 있다. \n공과 상대편이 땅으로 넘어져야 태클이 성공한다.")
                        RugbyRulesFormat(picture: "ruck-after-tackle", contents: "태클이 성공적으로 이루어지면……\n태클 당한 선수는 공을 바로 놓거나 패스해야한다.\n태클 한 선수는 바로 비키거나 ruck을 만들어서\n공이 자신의 진영에 오도록 경합을 한다.")
                        RugbyRulesFormat(picture: "tackle-after-maul", contents: "태클로 인해 땅에 넘어지지 않고 버틸 경우, 공을 가진 사람은 상대를 등지고 서있는 상태에서 다른 선수들이 ruck을 만들어서 공을 경합할 수 있다(이를 maul이라고 한다.)")
                        RugbyRulesFormat(picture: "lineout", contents: "공이 사이드라인으로 나가면 line-out이라는 것을 한다(축구의 드로잉과 같다). \n한 명이 던지고, 다른 선수들은 줄을 만들어서 해당 공을 잡는다. 이 때, 2명의 선수가 한 명을 높이 들어올릴 수 있다.")
                        RugbyRulesFormat(picture: "scrum", contents: "패널티나 maul이 제대로 이루어지지 않는 경우처럼 게임이 멈출 경우, scrum을 통해 게임을 재시작한다.")
                        RugbyRulesFormat(picture: "try", contents: "선수가 공에 접촉을 한 상태로 골라인을 넘어가면 점수를 획득하게 된다. 이것을 try라고 한다.")
                    }
                    
                    //no divider
                    Image("conversion")
                        .padding(.bottom, 15)
                    Text("try 이후에 conversion으로 추가 점수 획득이 가능하다. 이는 공을 차서 골포스트 사이로 넣는 것으로 득점이 가능하다.")
                        .font(.system(size: 14))
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
