//
//  playerno.swift
//  Info-Rugby
//
//  Created by Seik Oh on 2022/05/04.
//

import SwiftUI

struct Playerno: View {
    var body: some View {
        VStack{
            Text("인원")
                .font(.title)
                .fontWeight(.bold)
                .padding(EdgeInsets(top: 80, leading: 130, bottom: 60, trailing: 130))
            Image("6vs6")
                .padding(.bottom, 80)
            Text("Tag럭비와 Touch럭비 모두 6vs6으로 이루어진다.\n하지만, 상황에 맞게 숫자는 바꿔서 해도 된다.")
                .font(.system(size: 14))
                .lineSpacing(3)
                .frame(width: 358, height: .infinity, alignment: .leading)
            Spacer()
        }
        .frame(maxWidth: 358, maxHeight: .infinity)
    }
}


struct Playerno_Previews: PreviewProvider {
    static var previews: some View {
        Playerno()
    }
}
