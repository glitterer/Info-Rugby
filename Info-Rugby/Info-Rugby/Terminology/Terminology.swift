//
//  Terminology.swift
//  Info-Rugby
//
//  Created by Seik Oh on 2022/05/04.
//

import SwiftUI
extension Terminology{
    var HeaderView: some View{
        HStack{
            Text("Terminology")
                .font(.title)
                .fontWeight(.bold)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
            Spacer()
        }
    }
}

struct Terms: Comparable, Identifiable {
    static func < (lhs: Terms, rhs: Terms) -> Bool {
        return (lhs.term, lhs.definition) < (rhs.term, rhs.definition)
    }
    
    var id = UUID()
    let term: String
    let definition: String
}

let alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]

struct Terminology: View {
    @State private var searchText = ""
    var terminologys = [Terms]()
    
    var body: some View {
        VStack {
            HeaderView
                .padding(.leading, 16)
            ScrollViewReader { scrollProxy in
                ZStack {
                    List {
                        ForEach(alphabet, id: \.self) { letter in
                            Section(header: Text(letter).id(letter)) {
                                ForEach(terminologys.filter({ (termdata) -> Bool in
                                    termdata.term.prefix(1) == letter
                                })) { termdata in
                                    VStack(alignment: .leading) {
                                        Text(termdata.term)
                                            .fontWeight(.bold)
                                        Text(termdata.definition)
                                    }
                                    
                                }
                            }
                        }                    }
                    //.navigationTitle("termdatas")
                    .listStyle(PlainListStyle())
                    
                    VStack {
                        ForEach(alphabet, id: \.self) { letter in
                            HStack {
                                Spacer()
                                Button(action: {
                                    print("letter = \(letter)")
                                    if terminologys.first(where: { $0.term.prefix(1) == letter }) != nil {
                                        withAnimation {
                                            scrollProxy.scrollTo(letter)
                                        }
                                    }
                                }, label: {
                                    Text(letter)
                                        .font(.system(size: 12))
                                        .foregroundColor(Color.blue)
                                        .padding(.trailing, 10)
                                })
                            }
                        }
                    }
                }
            }
        }
    }
    
    init() {
        terminologys.append(Terms(term: "Advantage", definition: "상대의 페널티로 인해 해당 팀이 가지는 어드벤티지"))
        terminologys.append(Terms(term: "Attacking-team", definition: "공격을 진행하는 팀"))
        terminologys.append(Terms(term: "Defending-team", definition: "수비를 진행하는 팀"))
        terminologys.append(Terms(term: "Drop-kick", definition: "일부러 손에서 공을 떨어뜨려 차는 것"))
        terminologys.append(Terms(term: "Goal", definition: "Try라고도 부르며 점수를 획득하는 것=골인"))
        terminologys.append(Terms(term: "Kick-off", definition: "공을 상대진영으로 차서 경기를 시작하는 것"))
        terminologys.append(Terms(term: "Maul", definition: "Ball Carrier와 상대 선수 1명을 포함하여 서서 이루어지는 경합과정"))
        terminologys.append(Terms(term: "Punt", definition: "일부러 공이 땅에 닿기 전에 공을 차는 것"))
        terminologys.append(Terms(term: "Ruck", definition: "공이 딸에 떨어져있을 때, 땅에 누워있는 선수 외의 사람들이 서로 충돌하는 것"))
        
        terminologys.append(Terms(term: "Actual time", definition: "멈춘 시간을 제외한 플레이 타임"))
        terminologys.append(Terms(term: "Ball Carrier", definition: "볼을 들고 있는 선수"))
        terminologys.append(Terms(term: "Binding", definition: "손과 어깨를 사용하여 상대편의 어깨와 허리 쪽을 잡는 것"))
        terminologys.append(Terms(term: "Blood ingury", definition: "지속적으로 피가 나오는 부상"))
        terminologys.append(Terms(term: "Captain", definition: "주장; 심판과 다양한 선택지에 대해서 의논하는 역할도 맡는다"))
        terminologys.append(Terms(term: "Dead", definition: "심판이 휘슬을 불거나 conversion이 실패한 상태의 공"))
        terminologys.append(Terms(term: "Foul Play", definition: "파울"))
        
        terminologys.append(Terms(term: "Forward", definition: "상대진영의 데드볼 라인을 향해 가는 것"))
        terminologys.append(Terms(term: "Free-kick", definition: "파울 플레이가 일어났을 때, 상대편에게 주어질 수 있는 킥 기회"))
        terminologys.append(Terms(term: "Goal line", definition: "골 라인Hand-off"))
        terminologys.append(Terms(term: "Hand off", definition: "Ball Carrier의 허용되는 행동 중 하나로, 다른 선수를 떨쳐내기 위해 손을 사용"))
        terminologys.append(Terms(term: "Infield", definition: "플레이가 가능한 구역"))
        terminologys.append(Terms(term: "Knock-on", definition: "선수가 공을 놓쳐서 공이 앞으로 갔을 때; 선수가 공을 자신의 어깨나 손으로 쳐서 앞으로 보냈을 때; 공이 손이나 어깨에 부딪쳐서 앞으로 갔을 때 공이 땅과 접촉하거나 다른 선수가 잡았을 때"))
        terminologys.append(Terms(term: "lineout", definition: "세트피스(set piece) 중 하나로, 각 팀에서 2명 이상의 선수들이 참여하여 라인 밖에서 공을 던졌을 때 해당 공을 잡기위한 경합 과정"))
        
        terminologys.append(Terms(term: "Near", definition: "1미터 이내"))
        terminologys.append(Terms(term: "Off feet", definition: "발을 뺀 신체의 일부가 땅이나 땅에 있는 선수와 접촉했을 때"))
        terminologys.append(Terms(term: "Offside", definition: "오프사이드"))
        terminologys.append(Terms(term: "Placer", definition: "같은 편 선수가 공을 차기 위해 다른 선수가 공을 잡아주는 것"))
        terminologys.append(Terms(term: "Played", definition: "고의적으로 선수가 공을 건드렸을 때"))
        terminologys.append(Terms(term: "Dead", definition: "심판이 휘슬을 불거나 conversion이 실패한 상태의 공"))
        terminologys.append(Terms(term: "Quick Throw", definition: "lineout이 형성 되지 전에 touch에서 공을 던지는 것"))
        
        terminologys.append(Terms(term: "Receiver", definition: "공이 땅에 떨어지거나 라인아웃에서 뒤로 던져졌을 때 해당 공을 받는 사람"))
        terminologys.append(Terms(term: "Scrum", definition: "세트피스(set piece) 중 하나로 각 팀의 8명이 포메이션을 이루어면서 바인딩 하는 것(binding)"))
        terminologys.append(Terms(term: "Tackle", definition: "태클"))
        terminologys.append(Terms(term: "Touch", definition: "터치라인 이후의 공간 모두 포함"))
        terminologys.append(Terms(term: "Uncontested scrum", definition: "scrum을 이루지면 서로 미는 것이 허용되지 않는 경합; 이미 공을 가져가는 팀이 정해졌다."))
        terminologys.append(Terms(term: "Yellow card", definition: "경고; 옐로카드"))
        
        
        terminologys.sort()
    }
}

struct Terminology_Previews: PreviewProvider {
    static var previews: some View {
        Terminology()
    }
}
