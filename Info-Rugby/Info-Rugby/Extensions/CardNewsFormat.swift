//
//  cardnews.swift
//  Info-Rugby
//
//  Created by Seik Oh on 2022/05/03.
//

import SwiftUI

struct CardNewsFormat: View {
    let ball: String
    let contents: String
    let picture: String
    
    var body: some View {
        Group{
            Text(ball)
                .font(.system(size: 20))
                .fontWeight(.bold)
                .padding(.bottom, 1) //line사이 간격
            Text(contents)
                .font(.system(size: 14))
                .lineSpacing(3)
            Image(picture)
        }
    }
}
