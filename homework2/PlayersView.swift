//
//  PlayersView.swift
//  homework2
//
//  Created by robert on 2022/10/23.
//

import SwiftUI

struct PlayersView: View {
    let list : Players
    var body: some View {
        TabView(){
            ForEach(list.plist,id: \.name){
                name in PlayerView(p:name)
            }
        }.indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always)).tabViewStyle(PageTabViewStyle())
    }
}

struct PlayersView_Previews: PreviewProvider {
    static var previews: some View {
        PlayersView(list: .mchina)
    }
}
