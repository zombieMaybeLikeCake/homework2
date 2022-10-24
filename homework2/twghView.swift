//
//  twghView.swift
//  homework2
//
//  Created by robert on 2022/10/24.
//

import SwiftUI

struct twghView: View {
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Text("台灣")
                    rlight()
                    Text("VS")
                    llight()
                    Text("中國")
                }
                Image("twch").resizable().scaledToFit().frame(width: 300, height: 750,alignment: .top)
                Divider()
                VStack{
                    
                }
            }
        }
    }
}

struct twghView_Previews: PreviewProvider {
    static var previews: some View {
        twghView()
    }
}
