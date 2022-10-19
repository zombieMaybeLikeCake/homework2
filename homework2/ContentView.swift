//
//  ContentView.swift
//  homework2
//
//  Created by robert on 2022/10/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            MainView().tabItem {Label("主頁" ,systemImage:"hammer")}
        Text("製作中").tabItem {Label( "四強賽事介紹" ,systemImage:"hammer")}
        Text("製作中").tabItem {Label( "各國選手介紹" ,systemImage:"hammer")}
        Text("其他").tabItem {Label( "其他" ,systemImage:"hammer")}
        }
    }
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

