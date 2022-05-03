//
//  TagAndTouch.swift
//  Info-Rugby
//
//  Created by Seik Oh on 2022/05/03.
//

import SwiftUI

struct TagAndTouch: View {
    var body: some View {
            ZStack(alignment: .topLeading) {
                VStack(alignment: .leading){
                    HStack{
                        Text("태그럭비 VS 터치럭비")
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                        Spacer()
                    }
                    Group{ //1
                        Text("규칙이나 점수에서는 큰 차이가 없다. \n다만, 태그럭비는 “tag”라는 줄을 2개 차고 달리면서 태그를 떨어뜨려야 태클로 인정된다. \n터치럭비는 선수를 'touch'하면 태클로 인정한다.")
                            .font(.system(size: 14))
                            .lineSpacing(3)
                            .frame(width: 358, height: .infinity, alignment: .leading)
                    }
                    .padding(.bottom, 15)
                    
                    Group{
                        Image("tag")
                            .padding(.bottom, 15)
                        Image("touch")
                    }
                    Spacer()
                }
                .frame(maxWidth: 358, maxHeight: .infinity)
            }
        .navigationBarTitle("", displayMode: .inline)
    }
}

struct TagAndTouch_Previews: PreviewProvider {
    static var previews: some View {
        TagAndTouch()
    }
}
