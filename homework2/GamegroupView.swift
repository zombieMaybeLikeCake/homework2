//
//  GamegroupView.swift
//  homework2
//
//  Created by robert on 2022/10/20.
//

import SwiftUI

struct GamegroupView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack
                {
                    Group{
                        Group{
                            HStack{
                                Image("Men's Trophy").resizable().scaledToFit().frame(width: 100, height: 100)
                                Text("男團")
                                Spacer()
                            }
                            Spacer()
                            Text("冠軍賽")
                            Spacer()
                            HStack{
                                Image("cn").resizable().scaledToFit().frame(width: 100, height: 200)
                                NavigationLink{
                                    GameView()
                                }
                            label:{
                                Text("中國VS德國")
                            }
                                Image("de").resizable().scaledToFit().frame(width: 100, height: 200)
                            }
                            Divider()
                        }
                        Spacer()
                        Text("四強賽")
                        Spacer()
                        HStack{
                            Image("cn").resizable().scaledToFit().frame(width: 100, height: 200)
                                NavigationLink{
                                    GameView()
                                }
                            label:{
                                Text("中國VS日本")
                            }
                            Image("jp").resizable().scaledToFit().frame(width: 100, height: 200)
                        }
                        Divider()
                        
                    }
                    Group{
                        Group{
                            HStack{
                                Image("women's Trophy").resizable().scaledToFit().frame(width: 100, height: 100)
                                Text("女團")
                                Spacer()
                            }
                            Spacer()
                                Text("冠軍賽")
                            Spacer()
                            HStack{
                                HStack{
                                    Image("cn").resizable().scaledToFit().frame(width: 100, height: 200)
                                    NavigationLink{
                                        GameView()
                                    }
                                label:{
                                    Text("中國VS日本")
                                }
                                    Image("jp").resizable().scaledToFit().frame(width: 100, height: 200)
                                }
                            }
                        }
                        Divider()
                        Spacer()
                            Text("四強賽")
                        Spacer()
                        HStack{
                            Image("tw").resizable().scaledToFit().frame(width: 100, height: 200)
                            NavigationLink{
                                GameView()
                            }
                            label:{
                           
                                Text("台灣VS中國")
                            }
                            Image("cn").resizable().scaledToFit().frame(width: 100, height: 200)
                        }
                        Spacer()
                    }
            }
           
            }.navigationTitle("四強&冠軍賽況")
        }
    }
}

struct GamegroupView_Previews: PreviewProvider {
    static var previews: some View {
        GamegroupView()
    }
}
