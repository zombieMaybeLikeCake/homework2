//
//  MainView.swift
//  homework2
//
//  Created by robert on 2022/10/19.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var ch : chose
    var body: some View {
        NavigationView{
            if(ch.blackground == "table"){
                tableView()
            }
            else{
                blackView()
            }
                
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(chose())
    }
}
