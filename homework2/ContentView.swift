//
//  ContentView.swift
//  homework2
//
//  Created by robert on 2022/10/14.
//
import SwiftUI
import AVFoundation
struct ContentView: View {
    @EnvironmentObject var ch : chose
    var body: some View {
        TabView{
            MainView().tabItem {Label("主頁" ,systemImage:"hammer")}
        GamegroupView().tabItem {Label( "四強賽事介紹" ,systemImage:"hammer")}
        PlayerGroupView().tabItem {Label( "各國選手介紹" ,systemImage:"hammer")}
        OtherView().tabItem {Label( "其他" ,systemImage:"hammer")}
        }.onAppear(){
            ch.player.play()
        }
    }
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView().environmentObject(chose())
        }
    }

