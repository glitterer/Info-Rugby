//
//  Info.swift
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
            ScrollView{
            
            VStack(alignment: .leading){
                //1
                Text("대한럭비협회")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    .padding(.bottom, 4)
                Text("서울특별시 송파구 올림픽로 424 올림픽공원테니스경기장 306호 (사)대한럭비협회")
                    .font(.system(size: 16))
                    .padding(.bottom, 6)
                    .foregroundColor(Color.InfoGrey)
                    .lineSpacing(3)
                
                ZStack{
                    Rectangle()
                        .foregroundColor(Color.lightGrey)
                        .frame(width: 358, height: 185, alignment: .center)
                    HStack{
                        Image("koreanrugby")
                            .padding(EdgeInsets(top: 23, leading: 23, bottom: 23, trailing: 23))
                        VStack(alignment: .leading){
                            //1
                            HStack{
                                Image(systemName: "phone.circle")
                                    .padding(.bottom)
                                
                                VStack(alignment: .leading){
                                    Text("Phone")
                                        .font(.system(size: 14))
                                        .fontWeight(.bold)
                                    Text("02-420-4244-5")
                                        .font(.system(size: 13))
                                }
                            }
                            //2
                            HStack{
                                Image(systemName: "paperplane.circle")
                                    .padding(.bottom)
                                
                                VStack(alignment: .leading){
                                    Text("Email")
                                        .font(.system(size: 14))
                                        .fontWeight(.bold)
                                    Text(verbatim: "rugby@sports.or.kr") //hyperlink color delete
                                        .font(.system(size: 13))
                                }
                            }
                            
                            //3
                            HStack{
                                Image(systemName: "globe")
                                    .padding(.bottom)
                                
                                VStack(alignment: .leading){
                                    Text("Website")
                                        .font(.system(size: 14))
                                        .fontWeight(.bold)
                                    Text(verbatim: "www.rugby.or.kr") //hyperlink color delete
                                        .font(.system(size: 13))
                                }
                            }
                        }
                    }
                }
                
                Divider()
                    .padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 0))
                
                //1
                Text("World Rugby")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    .padding(.bottom, 4)
                Text("8-10 Pembroke Street Lower, Dublin, Ireland")
                    .font(.system(size: 16))
                    .padding(.bottom, 6)
                    .foregroundColor(Color.InfoGrey)
                    .lineSpacing(3)
                ZStack{
                    Rectangle()
                        .foregroundColor(Color.lightGrey)
                        .frame(width: 358, height: 185, alignment: .center)
                    HStack{
                        Image("worldrugby")
                            .padding(EdgeInsets(top: 23, leading: 23, bottom: 23, trailing: 23))
                        VStack(alignment: .leading){
                            //1
                            HStack{
                                Image(systemName: "phone.circle")
                                    .padding(.bottom)
                                
                                VStack(alignment: .leading){
                                    Text("Phone")
                                        .font(.system(size: 14))
                                        .fontWeight(.bold)
                                    Text("+353 (01) 240 9200")
                                        .font(.system(size: 13))
                                }
                            }
                            //2
                            HStack{
                                Image(systemName: "paperplane.circle")
                                    .padding(.bottom)
                                
                                VStack(alignment: .leading){
                                    Text("Email")
                                        .font(.system(size: 14))
                                        .fontWeight(.bold)
                                    Text(verbatim: "info@worldrugby.org") //hyperlink color delete
                                        .font(.system(size: 13))
                                }
                            }
                            
                            //3
                            HStack{
                                Image(systemName: "globe")
                                    .padding(.bottom)
                                
                                VStack(alignment: .leading){
                                    Text("Website")
                                        .font(.system(size: 13))
                                        .fontWeight(.bold)
                                    Text(verbatim: "www.world.rugby") //hyperlink color delete
                                        .font(.system(size: 14))
                                }
                            }
                        }
                    }
                }
                
            }
            
            Spacer()
        }
        }
        .frame(maxWidth: 358, maxHeight: .infinity)
    }
}

struct Info_Previews: PreviewProvider {
    static var previews: some View {
        Info()
    }
}
