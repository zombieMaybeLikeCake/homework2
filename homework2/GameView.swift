//
//  GameView.swift
//  homework2
//
//  Created by robert on 2022/10/19.
//
import SwiftUI
struct GameView: View {
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Text("中國")
                    rlight()
                    Text("VS")
                    llight()
                    Text("日本")
                }
                Image("cnjp").resizable().scaledToFit().frame(width: 300, height: 750,alignment: .top)
                Divider()
                VStack{
                    
                }
            }
        }

    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
