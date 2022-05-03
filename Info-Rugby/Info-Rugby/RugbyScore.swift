//
//  RugbyScore.swift
//  Info-Rugby
//
//  Created by Seik Oh on 2022/05/03.
//

import SwiftUI

struct RugbyScore: View {
    var body: some View {
        ScrollView{
            ZStack(alignment: .topLeading) {
                VStack(alignment: .leading) {
                    Group{
                        Text("점수")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
                    }
                    Group{ //1
                        Image("rugbyScore-Try")
                            
                        Text("트라이(TRY) - 5점")
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                            .padding(.bottom, 1) //line사이 간격
                        Text("선수가 공에 접촉을 한 상태로 골라인을 넘긴다")
                            .font(.system(size: 14))
                    }
                    
                    Divider()
                        .padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 0))
                    
                    Group{ //2
                        Image("rugbyScore-Conversion")
                            
                        Text("컨버션(CONVERSION) - 2점")
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                            .padding(.bottom, 1) //line사이 간격
                        Text("Try로 득점 이후, 공을 차서 상대 골포스트 사이에 넣는 것을 의미\n한다")
                            .font(.system(size: 14))
                            .lineSpacing(3)
                            .frame(width: 358, height: .infinity, alignment: .leading)
                    }
                    
                    Divider()
                        .padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 0))
                    
                    Group{ //3
                        Image("rugbyScore-Penalty")
                            
                        Text("패널티킥(PENALTY KICK) - 3점")
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                            .padding(.bottom, 1) //line사이 간격
                        Text("Conversion과 마찬가지고 상대 골포스트 사이에 넣는 것이다. 다만, 이는 패널티를 얻었을 때의 킥을 말한다.")
                            .font(.system(size: 14))
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                            .fixedSize(horizontal: false, vertical: true)
                    }
                }
            }
            .frame(maxWidth: 358, maxHeight: .infinity)
        }
        .navigationBarTitle("", displayMode: .inline)
    }
}

struct RugbyScore_Previews: PreviewProvider {
    static var previews: some View {
        RugbyScore()
    }
}
