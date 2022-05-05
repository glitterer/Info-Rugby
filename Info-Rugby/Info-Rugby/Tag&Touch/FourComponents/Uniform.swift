//
//  uniform.swift
//  Info-Rugby
//
//  Created by Seik Oh on 2022/05/04.
//

import SwiftUI

struct Uniform: View {
    var body: some View {
        VStack{
            Text("복장/마우스")
                .font(.title)
                .fontWeight(.bold)
                .padding(EdgeInsets(top: 80, leading: 100, bottom: 50, trailing: 100))
            HStack{
            Image("mouthpiece")
                .resizable()
                .frame(width: .infinity, height: 235, alignment: .leading)
            Image("rugbykit")
                    .resizable()
                    .frame(width: .infinity, height: 235, alignment: .leading)
            }
            .padding(.bottom, 80)
            Text("**복장은 사실 크게 상관이 없다.**\n\n공식 경기에서는 “rugby shirts” 혹은 'rugby uniform'를 입기는 하지만, 체육복으로 해서 간단하게 운동용으로 경기를 해도 된다.\n\n마우스피스는 럭비에서는 필요하지만, 태그나 터치에서는 일반 럭비에서 하는 것처럼 부상당할만한 태클이 없기 때문에 없어도 무방하다.\n\n태그의 경우, 태그 럭비에서만 필요하며, 터치럭비에서는 필요하지 않다.")
                .font(.system(size: 16))
                .lineSpacing(3)
                .frame(width: 358, height: .infinity, alignment: .leading)
            Spacer()
        }
        .frame(maxWidth: 358, maxHeight: .infinity)
    }
}

struct Uniform_Previews: PreviewProvider {
    static var previews: some View {
        Uniform()
    }
}
