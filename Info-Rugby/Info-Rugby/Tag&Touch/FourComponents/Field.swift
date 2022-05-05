//
//  field.swift
//  Info-Rugby
//
//  Created by Seik Oh on 2022/05/04.
//

import SwiftUI

struct Field: View {
    var body: some View {
        VStack{
            Text("장소")
                .font(.title)
                .fontWeight(.bold)
                .padding(EdgeInsets(top: 80, leading: 130, bottom: 60, trailing: 130))
            Image("field-field")
                .resizable()
                .frame(width: .infinity, height: 235, alignment: .leading)
                .padding(.bottom, 80)
            Text("**공식 경기에서는 럭비 필드가 있다.**\n사진과 같이 럭비 골포스트가 있어야 한다.\n\n하지만 운동용으로 하는 간편한 경기의 경우, **없어도 무방하다.**\n또한, 즐기는 용으로 하고 싶다면 **운동장에서도 충분히 가능**하다고 본다.\n(다만, 넘어질 수 있으니 아무래도 잔디가 있으면 조부상을 줄일 수 있다)")
                .font(.system(size: 16))
                .lineSpacing(3)
                .frame(width: 358, height: .infinity, alignment: .leading)
            Spacer()
        }
        .frame(maxWidth: 358, maxHeight: .infinity)
    }
}


struct Field_Previews: PreviewProvider {
    static var previews: some View {
        Field()
    }
}
