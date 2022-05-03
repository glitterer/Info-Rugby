//
//  RugbyLeagueUnion.swift
//  Info-Rugby
//
//  Created by Seik Oh on 2022/05/03.
//

import SwiftUI

struct RugbyLeagueUnion: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            VStack(alignment: .leading){
                    Text("럭비 리그 VS 럭비 유니온")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(EdgeInsets(top: 0, leading: 16, bottom: 15, trailing: 0))
                Spacer()
            }
            .frame(maxWidth: 358, maxHeight: .infinity)
        }
        .navigationBarTitle("", displayMode: .large)
    }
}

struct RugbyLeagueUnion_Previews: PreviewProvider {
    static var previews: some View {
        RugbyLeagueUnion()
    }
}
