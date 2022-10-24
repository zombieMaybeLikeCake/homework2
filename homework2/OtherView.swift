//
//  OtherView.swift
//  homework2
//
//  Created by robert on 2022/10/19.
//

import SwiftUI

struct OtherView: View {
    let images = ["1","2","3","4","5"]
    let columns = [GridItem(.adaptive(minimum:120))]
    let girl = ["a","b","c","d","e","f","g","h"]
    let rows = [GridItem()]
    var body: some View {
        List{
            Section(header: Text("本屆男團最大憾事").font(.largeTitle)){
                VStack()
                {
                    Text("10天前才在WTT阿拉木圖站勇奪兩冠一亞的林昀儒，隨後赴德國參加職業聯賽，結果傳出日籍教練確診，一行人無法飛往中國成都，被迫放棄比賽，也沒有辦法與莊智淵、廖振珽、黃彥誠、彭王維，一起挑戰 2014年締造的隊史最佳第三名")
                }
            
                ScrollView(.horizontal, showsIndicators: true){
                    LazyHGrid(rows:rows){
                        ForEach(0..<5){ i in
                            Image(images[i]).photoStyle()
                        }
                    }
                    
                }
            }
            Section(header :Text("桌球界的美女").font(.largeTitle)){
                LazyVGrid(columns: columns){
                    ForEach(0..<8){
                        num in Image(girl[num]).resizable().scaledToFit().frame(width: 100, height: 100).clipShape(Rectangle()).padding()
                    }
                }
                Link("參考資料", destination: URL(string: "https://www.youtube.com/watch?v=QKXRxQoV8jQ&t=19s")!)
            }
        }
    }
}

struct OtherView_Previews: PreviewProvider {
    static var previews: some View {
        OtherView()
    }
}
