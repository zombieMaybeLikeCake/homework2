//
//  setView.swift
//  homework2
//
//  Created by robert on 2022/10/24.
//

import SwiftUI
import AVFoundation
struct setView: View {
    @State var state = "暫停背景音樂"
    @EnvironmentObject var ch : chose
    let musics=["back","table"]
    var body: some View {
        VStack{
            Text("設定")
                .font(.largeTitle)
            Spacer()
            Form{
                Picker(selection: $ch.blackground){
                    ForEach(musics, id: \.self) {
                        song in Text(song)
                    }
                }label:{
                    Text("選擇背景")
                }
            }.pickerStyle(.inline)
            Button{
                ch.IsplayerItem.toggle()
                if(ch.IsplayerItem){
                    ch.player.play()
                    state="暫停背景音樂"
                }
                else{
                    ch.player.pause()
                    state="播放背景音樂"
                }
            }	label: {
                Text(state)
            }
            Spacer()
        }
    }
}
struct setView_Previews: PreviewProvider {
    static var previews: some View {
        setView().environmentObject(chose())
    }
}
