import SwiftUI
import AVFoundation
import AVKit
struct PlayerView: View {
    @State private var urlString = ""
    @State private var moveDistance: Double = 270
    @State private var delay: Double = 1
    @State private var speed: Double = 0.5
    let player = AVPlayer()
    let url = Bundle.main.url(forResource: "fzd", withExtension: "mp4")!
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                ZStack{
                    Image("fzd").resizable().scaledToFill().frame(minWidth: 0,maxWidth: 450, minHeight: 0, maxHeight: 700 )
                    Text("樊振東").font(.largeTitle)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center).offset(x: moveDistance, y: -200).animation(.easeOut.speed(speed).delay(delay),value: moveDistance) .onAppear {
                            moveDistance = -120
                            delay=0
                            speed=1
                        }.onDisappear(){
                            moveDistance = 270
                        }
                }
                Spacer()
                Divider()
                Spacer()
                VStack{
                    HStack(alignment: .center){
                        Spacer()
                        VStack(alignment: .leading){
                            Text("  世界排名:No.1")
                            Divider()
                            Text("  生日:1997/1/22")
                            Divider()
                            Text(" 打法:横拍雙面弧圈結合快攻")
                                .multilineTextAlignment(.center)
                        }
                        Divider()
                        VStack(){
                            Text("配備")
                            Divider()
                            Text("樊振东 ALC")
                            Divider()
                            Text("DIGNICS 09C")
                            Divider()
                        }
                        Spacer()
                    }
                    
                    Text("特長")
                        .font(.title)
                        .multilineTextAlignment(.center)
                    Divider()
                    VStack{
                        Text("樊振东汲取了张继科的逆旋转发球和反手拧拉，同时也形成了自己拉球角度大落点刁钻，防守稳健，攻防转换自如，質量高的技术特点。隨着近年來飛躍式的進步，樊振東的反手技術已達世界一流水平，正手技術及使用率亦大大提高，整體技術更加成熟，全面。即使面對馬龍、許昕等超一流選手亦能取勝。"	).multilineTextAlignment(.center)
                        Divider()
                    }.frame(width: 350, height: 200, alignment: .top)
                    VStack{
                        Text("高光時刻")
                            .font(.title)
                            .multilineTextAlignment(.center)
                        Divider()
                        VideoPlayer(player: AVPlayer(url: url))
                    }.frame(height: 400).padding()
                }
               
            }.padding().frame(width: .infinity, height:.infinity)
            
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}

