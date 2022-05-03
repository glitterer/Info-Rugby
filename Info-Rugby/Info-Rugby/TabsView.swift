//
//  Home.swift
//  Info-Rugby
//
//  Created by Seik Oh on 2022/05/04.
//

import SwiftUI

struct TabsView: View {
    var body: some View {
        
        TabView {
            WhatIsRugby()
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("Terminology")
                }
            WhatIsRugby()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            TagTouchView()
                .tabItem {
                    Image(systemName: "info.circle.fill")
                    Text("Info")
                }
        }
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
