//
//  ContentView.swift
//  homework2
//
//  Created by robert on 2022/10/14.
//

import SwiftUI
import AVFoundation
struct ContentView: View {
    let player  = AVPlayer()
    var body: some View {
        TabView{
            MainView().tabItem {Label("主頁" ,systemImage:"hammer")}
        GamegroupView().tabItem {Label( "四強賽事介紹" ,systemImage:"hammer")}
        PlayerGroupView().tabItem {Label( "各國選手介紹" ,systemImage:"hammer")}
        Text("其他").tabItem {Label( "其他" ,systemImage:"hammer")}
        }.onAppear {
            let url = Bundle.main.url(forResource: "Club", withExtension: "mp3")!
            let playerItem = AVPlayerItem(url: url)
            player.replaceCurrentItem(with: playerItem)
            player.play()
        }
        
    }
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

