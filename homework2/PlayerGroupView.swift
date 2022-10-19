//
//  PlayerGroupView.swift
//  homework2
//
//  Created by robert on 2022/10/19.
//

import SwiftUI
struct PlayerGroupView: View {
    var body: some View {
        NavigationView{
            List(0..<6){index in
                ForEach(1..<2){ index  in
                    NavigationLink{
                        PlayerView()
                    }
                label:{
                    HStack{
                        Rectangle().frame(width: 100, height: 100).aspectRatio(1,contentMode: .fit).overlay(Image("taiwan").resizable().scaledToFill())
                        Text("台灣")
                    }
                    
                    }
                }
             
            }.toolbar{
                ToolbarItem(placement: .principal){
                    Text( "各國隊伍介紹").font(.title)
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
