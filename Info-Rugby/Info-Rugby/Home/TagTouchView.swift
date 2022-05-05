//
//  TagTouchView.swift
//  Info-Rugby
//
//  Created by Seik Oh on 2022/05/04.
//

import SwiftUI

struct TagTouchView: View {
    @State private var ballSheet = false
    @State private var tagTouchPlayerSheet = false
    @State private var uniformSheet = false
    @State private var fieldSheet = false
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                //1
                Text("태그 vs 터치 럭비")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .padding(.bottom, 0.5)
                Image("tagtouch-difference")
                    .padding(.bottom, 24)
                
                //2
                Text("올림픽 봐야 돼! 럭비 어떻게 해?")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .lineSpacing(3)
                    .padding(.bottom, 0.5)
                VStack{
                    HStack{
                        Button(action: {
                            self.ballSheet.toggle()
                        }){
                            Image("tagtouch-ball")
                        }.sheet(isPresented: self.$ballSheet) {
                            Ball()
                        }
                        Button(action: {
                            tagTouchPlayerSheet.toggle()
                        }){
                            Image("tagtouch-players")
                        }.sheet(isPresented: self.$tagTouchPlayerSheet) {
                            Playerno()
                        }
                    }
                }
            }
            HStack{
                Button(action: {
                    self.uniformSheet.toggle()
                }){
                    Image("tagtouch-mouthpiece")
                }.sheet(isPresented: self.$uniformSheet) {
                    Uniform()
                }
                Button(action: {
                    fieldSheet.toggle()
                }){
                    Image("tagtouch-field")
                }.sheet(isPresented: self.$fieldSheet) {
                    Field()
                }
            }
            .padding(.bottom, 24)
            
            //3
            Text("태그/터치 럭비 규칙")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .lineSpacing(3)
                .padding(.bottom, 0.5)
            HStack{
                Image("general-rules")
                Image("general-score")
            }
            .padding(.bottom, 24)
            
            Spacer()
        }
    }
}



struct TagTouchView_Previews: PreviewProvider {
    static var previews: some View {
        TagTouchView()
    }
}
