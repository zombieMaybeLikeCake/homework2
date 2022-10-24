//
//  PlayerGroupView.swift
//  homework2
//
//  Created by robert on 2022/10/19.
//

import SwiftUI
struct PlayerGroupView: View {
    let country = ["日本女團","台灣女團","中國女團","中國男團","日本男團","德國男團"]
    let photo  = ["fjp","tw","fch","fch","fjp","fgm"]
    let gruop  = BigPlayers.all
    var body: some View {
        NavigationView{
            List{
                Section(header:Text("女團")){
                    ForEach(0..<3){ i in
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
                }
                Section(header:Text("男團")){
                    ForEach(3..<6){ i in
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
