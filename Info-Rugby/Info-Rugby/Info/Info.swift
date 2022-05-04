//
//  InfoView.swift
//  Info-Rugby
//
//  Created by Seik Oh on 2022/05/04.
//

import SwiftUI

extension Info{
    var HeaderView: some View{
        HStack{
            Text("Info")
                .font(.title)
                .fontWeight(.bold)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
            Spacer()
        }
    }
}
struct Info: View {
    var body: some View {
        VStack{
            HeaderView
            
            VStack(alignment: .leading){
                //1
                Text("대한럭비협회")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    .padding(.bottom, 4)
                Text("서울특별시 송파구 올림픽로 424 올림픽공원테니스경기장 306호 (사)대한럭비협회")
                    .font(.system(size: 16))
                    .padding(.bottom, 6)
                    .lineSpacing(3)
                ZStack{
                    Rectangle()
                        .foregroundColor(Color.lightGrey)
                        .frame(width: .infinity, height: 185, alignment: .center)
                Image("general-difference")
                    .padding(.bottom, 24)
                }
            }
            
            Spacer()
        }
        .frame(maxWidth: 358, maxHeight: .infinity)
    }
}

struct Info_Previews: PreviewProvider {
    static var previews: some View {
        Info()
    }
}
