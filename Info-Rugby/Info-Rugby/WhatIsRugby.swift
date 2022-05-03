//
//  WhatIsRugby.swift
//  Info-Rugby
//
//  Created by Seik Oh on 2022/05/02.
//

import SwiftUI

struct WhatIsRugby: View {
    var body: some View {
        NavigationView {
            VStack{
                NavigationLink(destination: RugbyScore()) {
                    Text("점수")
                }
                NavigationLink(destination: TagAndTouch()) {
                    Text("리그vs유니온")
                }
            }
            .buttonStyle(PlainButtonStyle())
            .navigationBarTitle("Rugby")
        }
    }
}

struct WhatIsRugby_Previews: PreviewProvider {
    static var previews: some View {
        WhatIsRugby()
    }
}
