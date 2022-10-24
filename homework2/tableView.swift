//
//  tableView.swift
//  homework2
//
//  Created by robert on 2022/10/24.
//

import SwiftUI

struct tableView: View {
    var body: some View {
        ScrollView{
            VStack{
                Image("ind").resizable().scaledToFit().frame(width: 500, height: 280)
                Text("簡介").font(.largeTitle).padding()
                Divider()
                VStack(){
                    Text("由于2020年釜山世乒赛团体赛的取消").padding()
                    Text("距离上次举办团体世乒赛已经过去了四年。").padding()
                    Text("2018年，中国队在瑞典哈尔姆斯塔德举行的比赛中").padding()
                    Text("夺得男子和女子团体冠军。").padding()
                    Text("今年，主场作战的中国队将再次成为").padding()
                    Text("最大的夺冠热门。").padding()
                    Text("但是各個桌球強國 日本 瑞典 德國 ").padding()
                }
                Text("也是虎視眈眈的盯著冠軍寶座").padding()
                Spacer()
                Text("關於世乒賽").font(.largeTitle).padding()
                Divider()
                Group{
                    Text("從2003年第47屆世桌賽開始，國際桌總決定將單項與團體比賽分開進行。單數年份進行單項賽；雙數年份進行團體賽。最近一屆已經舉行的單項比賽是2021年的第56屆世界桌球錦標賽單項賽，在美國休斯頓舉行。").padding()
                }
            }
            
        }.toolbar{
            ToolbarItem(placement: .principal){
                Text("2022成都世乒賽").font(.title)
            }
            ToolbarItem(placement:.navigationBarLeading){
                Button{
                    
                }label:{
                    Image("title").resizable().scaledToFit().frame(width:100,height: 40)
                }
            }
            ToolbarItem(placement:.navigationBarTrailing){
                NavigationLink{
                    setView()
                }
            label:{
                    Image(systemName:"gearshape")
                }
            }
        }.background(Image("background").resizable(resizingMode: .tile).opacity(0.5))
    }
}

struct tableView_Previews: PreviewProvider {
    static var previews: some View {
        tableView()
    }
}
