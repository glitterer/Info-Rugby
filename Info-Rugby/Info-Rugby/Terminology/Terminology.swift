//
//  Terminology.swift
//  Info-Rugby
//
//  Created by Seik Oh on 2022/05/04.
//

import SwiftUI

//
//  termdatas.swift
//  TestCalendar
//
//  Created by Christopher Riner on 9/11/20.
//

import SwiftUI

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
                        }
                    }
                    .navigationTitle("termdatas")
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
        terminologys.append(Terms(term: "Advantage", definition: "Ryan"))
        terminologys.append(Terms(term: "Attacking-team", definition: "Ryan"))
        terminologys.append(Terms(term: "Defending-team", definition: "play"))
        terminologys.append(Terms(term: "Drop-kick", definition: "Ryan"))
        terminologys.append(Terms(term: "Goal", definition: "Ryan"))
        terminologys.append(Terms(term: "Kick-off", definition: "play"))
        terminologys.append(Terms(term: "Maul", definition: "Ryan"))
        terminologys.append(Terms(term: "Punt", definition: "a punt"))
        terminologys.append(Terms(term: "Ruck", definition: "made from"))
        terminologys.sort()
    }
}

struct Terminology_Previews: PreviewProvider {
    static var previews: some View {
        Terminology()
    }
}
