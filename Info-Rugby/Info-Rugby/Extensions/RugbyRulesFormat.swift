//
//  RugbyRulesFormat.swift
//  Info-Rugby
//
//  Created by Seik Oh on 2022/05/03.
//

import SwiftUI

struct RugbyRulesFormat: View {
    let picture: String
    let contents: String
    
    var body: some View {
        Group{
            Image(picture)
                .padding(.bottom, 15)
            Text(contents)
                .font(.system(size: 14))
                .lineSpacing(3)
            Divider()
                .padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 0))
        }
    }
}
