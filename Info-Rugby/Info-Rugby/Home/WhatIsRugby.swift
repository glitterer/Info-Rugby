//
//  WhatIsRugby.swift
//  Info-Rugby
//
//  Created by Seik Oh on 2022/05/02.
//

import SwiftUI

extension WhatIsRugby{
    var HeaderView: some View{
        HStack{
            Text("Rugby")
                .font(.title)
                .fontWeight(.bold)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
            Spacer()
        }
    }
    
    var FilterBar: some View{
        HStack{
            ForEach(FilterViewModel.allCases, id: \.rawValue){ item in
                VStack{
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(selectedFilter == item ? .semibold : .regular)
                        .foregroundColor(selectedFilter == item ? .black : .gray)
                    if selectedFilter == item{
                        Capsule()
                            .foregroundColor(Color(.black))
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "filter", in: animation)
                    } else {
                        Capsule()
                            .foregroundColor(Color(.clear))
                            .frame(height: 3)
                    }
                }
                .onTapGesture{
                    withAnimation(.easeInOut){
                        self.selectedFilter = item
                    }
                }
            }
        }
        .overlay(Divider().offset(x: 0, y: 16))
    }
}

struct WhatIsRugby: View {
    @State private var selectedFilter: FilterViewModel = .general
    @Namespace var animation
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){
                HeaderView
                VStack{
                    FilterBar
                    
                    // 여기서 뷰 전환
                    switch selectedFilter {
                    case .general:
                        GeneralView()
                    case .tagtouch:
                        TagTouchView()
                    }
                    
                    Spacer()
                }
            }.navigationBarTitle("", displayMode: .inline)
                .navigationBarHidden(true)
        }
        .frame(maxWidth: 358, maxHeight: .infinity)
    }
    
}


struct WhatIsRugby_Previews: PreviewProvider {
    static var previews: some View {
        WhatIsRugby()
    }
}
