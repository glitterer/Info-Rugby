//
//  Ball.swift
//  Info-Rugby
//
//  Created by Seik Oh on 2022/05/04.
//

import SwiftUI

struct Ball: View {
    var body: some View {
        VStack{
            Text("럭비공")
                .font(.title)
                .fontWeight(.bold)
                .padding(EdgeInsets(top: 80, leading: 130, bottom: 60, trailing: 130))
            Image("rugbyBall")
                .resizable()
                .frame(width: 235, height: 235, alignment: .center)
                .padding(.bottom, 80)
            Text("**대부분의 나라에서 사용하는 '럭비공'은 럭비 유니온에서 사용되는 공이다.**\n\n 처음에는 갈색 가죽공이 사용되었지만, 지금은 다양한 색상의 공이 사용된다.\n\n 공의 규격은 원주의 길이가 짧은 쪽 '28-30 cm(11-11.8 in) × 긴 쪽58-62 cm(22.8-24.4 in)'인 공으로 규정되어 있다. 무게는 410-460 g(14.5~16.2 온스) 사이이며, 내압은 65.71-68.75 kPa (9.5-10 psi)이다.")
                .font(.system(size: 16))
                .lineSpacing(3)
                .frame(width: 358, height: .infinity, alignment: .leading)
            Spacer()
        }
        .frame(maxWidth: 358, maxHeight: .infinity)
    }
}

struct Ball_Previews: PreviewProvider {
    static var previews: some View {
        Ball()
    }
}
