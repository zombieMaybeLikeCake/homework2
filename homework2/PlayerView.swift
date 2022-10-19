import SwiftUI

struct PlayerView: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                ZStack{
                    Image("fzd").resizable().scaledToFill().frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,maxWidth: 500, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: 500 ).ignoresSafeArea()
                    Text("樊振東")
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center).position(x:40,y:30)
                }.position(x:160,y:200)
                
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
                            Text("打法:横拍雙面弧圈結合快攻")
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
                        Text("樊振东汲取了张继科的逆旋转发球和反手拧拉，同时也形成了自己拉球角度大落点刁钻，防守稳健，攻防转换自如，質量高的技术特点。隨着近年來飛躍式的進步，樊振東的反手技術已達世界一流水平，正手技術及使用率亦大大提高，整體技術更加成熟，全面。即使面對馬龍、許昕等超一流選手亦能取勝。").multilineTextAlignment(.center)
                    }.frame(width: 350, height: 400, alignment: .top)
                
                        
                    
                }
               
                
            }
            
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}

