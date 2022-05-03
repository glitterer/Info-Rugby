//
//  TagTouchScore.swift
//  Info-Rugby
//
//  Created by Seik Oh on 2022/05/04.
//

import SwiftUI

struct TagTouchScore: View {
    var body: some View {
            ZStack(alignment: .topLeading) {
                VStack(alignment: .leading){
                    HStack{
                        Text("점수")
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                        Spacer()
                    }
                     
                    //no divider
                    Image("TouchTry")
                        .padding(.bottom, 15)
                    Text("태그나 터치 럭비에서 점수는 획득하는 방법은 트라이(TRY)가 유일하다!\n\n트라이 당 점수는 1점이다.\n\n트라이를 하는 방법은 일반 럭비 (럭비 리그 / 럭비 유니온)와 마찬가지로 선수가 공에 접촉을 한 상태로 골라인을 넘기면 된다.\n\n일반 럭비 (럭비 리그 / 럭비 유니온)에 있는 conversion이나 패널티킥은 존재하지 않는다!")
                        .font(.system(size: 14))
                        .lineSpacing(3)
                    
                    Spacer()
                }
                .frame(maxWidth: 358, maxHeight: .infinity)
            }
        .navigationBarTitle("", displayMode: .inline)
    }
}

struct TagTouchScore_Previews: PreviewProvider {
    static var previews: some View {
        TagTouchScore()
    }
}
