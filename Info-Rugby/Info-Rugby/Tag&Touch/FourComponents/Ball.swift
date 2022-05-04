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
                .padding(.bottom, 80)
            Text("The football used in rugby league is known as 'international size' or 'size 5' and is approximately 27 cm (11 in) long and 60 cm (24 in) in circumference at its widest point. Smaller-sized balls are used for junior versions of the game, such as 'Mini' and 'Mod'")
                .font(.system(size: 14))
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
