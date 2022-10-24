//
//  PlayerGroupView.swift
//  homework2
//
//  Created by robert on 2022/10/19.
//

import SwiftUI
struct PlayerGroupView: View {
    let country = ["中國男團","日本女團","中國女團","台灣女團","日本男團","德國男團"]
    let photo  = ["fch","fjp","fch","ftw","fjp","fgm"]
    let gruop  = BigPlayers.all
    var body: some View {
        NavigationView{
            List(0..<6){i in
                ForEach(1..<2){ index  in
                    NavigationLink{
                        PlayersView(list: gruop.bigplist[i])
                    }
                label:{
                    HStack{
                        Rectangle().frame(width: 100, height: 100).aspectRatio(1,contentMode: .fit).overlay(Image(photo[i]).resizable().scaledToFill())
                        Text(country[i])
                    }
                    }
                }
            }.toolbar{
                ToolbarItem(placement: .principal){
                    Text( "四強各國選手介紹").font(.title)
                }
            }
        }.navigationTitle("各國隊伍介紹")
    }
}

struct PlayerGroupView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerGroupView()
            .previewInterfaceOrientation(.portrait)
    }
}
