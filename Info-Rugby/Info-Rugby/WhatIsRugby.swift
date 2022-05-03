//
//  ContentView.swift
//  Info-Rugby
//
//  Created by Seik Oh on 2022/05/02.
//

import SwiftUI

struct WhatIsRugby: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: RugbyScore()) {
                Text("play")
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
