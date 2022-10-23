//
//  PlayersView.swift
//  homework2
//
//  Created by robert on 2022/10/23.
//

import SwiftUI

struct PlayersView: View {
    var body: some View {
        TabView(){
            PlayerView().padding().tabItem {
                Text("1")
            }
            PlayerView().padding().tabItem {
                Text("1")
            }
            PlayerView().padding().tabItem {
                Text("1")
            }
            PlayerView().padding().tabItem {
                Text("1")
            }
        }.indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always)).tabViewStyle(PageTabViewStyle())
    }
}

struct PlayersView_Previews: PreviewProvider {
    static var previews: some View {
        PlayersView()
    }
}
