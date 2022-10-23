//
//  playView.swift
//  homework2
//
//  Created by robert on 2022/10/23.
//

import SwiftUI
import AVKit
struct playView: UIViewControllerRepresentable {
    
    var urlString = ""
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
        controller.player = AVPlayer()
        return controller
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        if let url = URL(string: urlString) {
            let item = AVPlayerItem(url: url)
            uiViewController.player?.replaceCurrentItem(with: item)
        }
        
    }
    
    typealias UIViewControllerType = AVPlayerViewController
    
    
}
struct playView_Previews: PreviewProvider {
    static var previews: some View {
        playView()
    }
}
