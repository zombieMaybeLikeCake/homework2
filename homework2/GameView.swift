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
            Spacer()
           	
            VStack{
                Image("cnjp").resizable().scaledToFit().frame(width: 400, height: 700,alignment: .top)
            }
            Divider()
            Spacer()
            VStack{
                
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
