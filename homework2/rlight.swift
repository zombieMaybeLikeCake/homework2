//
//  rlight.swift
//  homework2
//
//  Created by robert on 2022/10/23.
//
import SwiftUI
struct rlight: View {
    @State private var opacity: Double = 1
    let timer = Timer.publish(every: 4, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack {
            if(opacity==1){
                Image("rlight").resizable().transition(.customTransition).frame(width: 90, height: 50)
            }
            else{
                Image("rlight").resizable().transition(.customTransition).frame(width: 90, height: 50).opacity(opacity)
            }
        }
        .onReceive(timer) { _ in
            opacity = 1
            withAnimation(.easeInOut(duration: 2).repeatCount(2, autoreverses: true)) {
                opacity = 0
            }
        }
    }
}

struct rlight_Previews: PreviewProvider {
    static var previews: some View {
        rlight().previewLayout(.sizeThatFits)
    }
}
