//
//  homework2App.swift
//  homework2
//
//  Created by robert on 2022/10/14.
//

import SwiftUI

@main
struct homework2App: App {
    @StateObject var ch = chose()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(ch)
        }
    }
}
