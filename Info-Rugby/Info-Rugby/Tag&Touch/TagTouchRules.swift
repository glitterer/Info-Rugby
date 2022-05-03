//
//  TagTouchRules.swift
//  Info-Rugby
//
//  Created by Seik Oh on 2022/05/04.
//

import SwiftUI

struct TagTouchRules: View {
    var body: some View {
        ScrollView{
            ZStack(alignment: .topLeading) {
                VStack(alignment: .leading){
                    HStack{
                        Text("태그 럭비 VS 터치 럭비")
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                        Spacer()
                    }
                    
                    Group{
                        RugbyRulesFormat(picture: "kickoff", contents: "팀을 나누고, 상태편 진형으로 공을 참으로써 시작")
                        RugbyRulesFormat(picture: "touchtackle", contents: "태그에서는 다른 사람의 태그를 떨어뜨리면,\n터치에서는 다른 사람을 터치하면 태클로 인정된다.\n태클을 당하면, 공을 내려놓고, 공 앞에 발을 디딘다.")
                        RugbyRulesFormat(picture: "aftertouchtackle", contents: "뒤에 같은 편의 다른 선수가 와서 공을 들고 패스를 함으로써 경기를 진행한다.")
                    }
                     
                    //no divider
                    Image("sixtouch")
                        .padding(.bottom, 15)
                    Text("총 6번의 공격 기회가 있으며, 6번 태클 후에는, 상태편의 공격으로 넘어간다.")
                        .font(.system(size: 14))
                }
                .frame(maxWidth: 358, maxHeight: .infinity)
            }
        }
        .navigationBarTitle("", displayMode: .inline)
    }
}

struct TagTouchRules_Previews: PreviewProvider {
    static var previews: some View {
        TagTouchRules()
    }
}
