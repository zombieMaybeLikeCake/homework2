import SwiftUI
import AVFoundation
import AVKit
struct PlayerView: View {
    let  p: Player
    @State private var urlString = ""
    @State private var moveDistance: Double = 270
    @State private var delay: Double = 2
    @State private var speed: Double = 0.25
    let player = AVPlayer()
    var body: some View {
        ScrollView{
            VStack(alignment: .center){
                ZStack{
                    Image(p.sn).resizable().scaledToFit().frame(minWidth: 0,maxWidth: 450, minHeight: 0, maxHeight: 700 )
                    Text(p.name).font(.largeTitle)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center).offset(x: moveDistance, y: -200).animation(.easeOut.speed(speed).delay(delay),value: moveDistance) .onAppear {
                            moveDistance = -120
                        }
                }
                Spacer()
                Divider()
                Spacer()
                HStack{
                    VStack{
                        HStack(alignment: .center){
                            Spacer()
                            VStack(alignment: .leading){
                                Text("  世界排名:"+p.rank)
                                Divider()
                                Text("  生日:"+p.bir)
                                Divider()
                                Text(" 打法:"+p.sty)
                                    .multilineTextAlignment(.center)
                            }
                        }
                    }
                    Divider()
                    VStack(){
                        Text("配備")
                        Divider()
                        Text(p.eq1)
                        Divider()
                        Text(p.eq2)
                    }
                    Spacer()
                }
                Divider()
                    Text("特長")
                        .font(.title)
                        .multilineTextAlignment(.center)
                    Divider()
                    VStack{
                        Text(p.ind).multilineTextAlignment(.center)
                        Divider()
                    }.frame(width: 350, height: 200, alignment: .top)
                    VStack{
                        Text("高光時刻")
                            .font(.title)
                            .multilineTextAlignment(.center)
                        Divider()
                        VideoPlayer(player: AVPlayer(url: p.u))
                    }.frame(height: 400).padding()
            }
               
            }.padding().frame(width: .infinity, height:.infinity)
            
    }
}
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(p:.example)
    }
}

