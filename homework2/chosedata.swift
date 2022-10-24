//
//  chosedata.swift
//  homework2
//
//  Created by robert on 2022/10/24.
//

import Foundation
import UIKit
import AVFoundation
import SwiftUI
class chose: ObservableObject {
    @Published  var blackground = "table"
    @Published  var IsplayerItem = true
    @Published  var player = AVPlayer()
    init(){
        let url = Bundle.main.url(forResource: "Club", withExtension: "mp3")!
        let playerItem = AVPlayerItem(url: url)
        player.replaceCurrentItem(with: playerItem)
    }
}
struct Player{
    let  name :String
    let  sn : String
    let  rank : String
    let  bir : String
    let  sty : String
    let  eq1:  String
    let  eq2: String
    let  ind: String
    let   u : URL!
}
extension Player{
    static let example = Player(name:"樊振東", sn:"fzd" ,rank:"No.1" ,bir:"1997/1/22" ,sty:"横拍雙面弧圈結合快攻", eq1:"樊振东 ALC" ,eq2:"DIGNICS 09C" ,ind:"樊振东汲取了张继科的逆旋转发球和反手拧拉，同时也形成了自己拉球角度大落点刁钻，防守稳健，攻防转换自如，質量高的技术特点。隨着近年來飛躍式的進步，樊振東的反手技術已達世界一流水平，正手技術及使用率亦大大提高，整體技術更加成熟，全面。即使面對馬龍、許昕等超一流選手亦能取勝。",u: Bundle.main.url(forResource: "fzd" , withExtension: "mp4"))
}

struct Players{
    let plist : [Player]
}
extension Players{
    static let mchina = Players(plist : [Player (name:"樊振東", sn:"fzd" ,rank:"No.1" ,bir:"1997/1/22" ,sty:"横拍雙面弧圈結合快攻", eq1:"樊振东 ALC" ,eq2:"DIGNICS 09C" ,ind:"樊振东汲取了张继科的逆旋转发球和反手拧拉，同时也形成了自己拉球角度大落点刁钻，防守稳健，攻防转换自如，質量高的技术特点。隨着近年來飛躍式的進步，樊振東的反手技術已達世界一流水平，正手技術及使用率亦大大提高，整體技術更加成熟，全面。即使面對馬龍、許昕等超一流選手亦能取勝。",u: Bundle.main.url(forResource: "fzd" , withExtension: "mp4")),Player(name:"馬龍", sn:"ml" ,rank:"No.2" ,bir:"1988/10/02" ,sty:"右手橫板弧圈結合快攻", eq1:"龍五w968特製" ,eq2:"NEO蓝国狂" ,ind:"馬龍的技術全面，打法先進，球感極佳。反手幾近鐵壁的防守，時常給對手產生壓迫。尤以反手銜接正手流暢，握拍幾乎不用轉換。其中遠檯攻防技術非常突出，是一位具有亞洲近檯細膩和歐洲中遠檯正反手兩面進攻特點的球手。尤其正手的銜接技術已到達爐火純青的地步，世人皆以模仿馬龍正手為楷模",u: Bundle.main.url(forResource: "to" , withExtension: "mp4")),Player(name:"王楚欽", sn:"wc" ,rank:"No.11" ,bir:"2000/5/11" ,sty:"左手横板，两面反胶", eq1:"底板W968" ,eq2:"狂飚8＆NEO蓝国狂" ,ind:"王楚钦是爆发力足，往往一板正手冲，对手防守非常吃力。 连续正手冲，板板发力凶悍，这也是现代先进打法的特点。 多次战胜张本智和，正反手力量全面压制张本",u: Bundle.main.url(forResource: "wc" , withExtension: "mp4"))])
}
extension Players{
    static let fjap  = Players(plist : [ Player (name:"伊藤美誠", sn:"im" ,rank:"No.35" ,bir:"1992/1/15" ,sty:"典型的近台快攻打法", eq1:"MIMA ITO CARBON" ,eq2:" Nittaku Fastarc G-1&顆粒" ,ind:"正手反膠主要負責發球和正手的快攻結合弧圈，但是伊藤基本都是快攻為主，一有機會就拍，拉弧圈的使用率很少；反手生膠主要就是突擊，加控制落點，基本不離開台子，90%以上的球都被控制在近台，因為一離台，反手的威力基本就失去了，只有在近台，生膠擊打出的低沉的球，給對方會的壓力才會更大",u: Bundle.main.url(forResource: "to" , withExtension: "mp4")),Player(name:"早田希娜", sn:"hh" ,rank:"No.5" ,bir:"2000/7/7" ,sty:"弧圈快攻", eq1:"Nittaku特製球拍" ,eq2:"Beni Soki 的粘性橡膠“Kyohyo 3＆Tenergy" ,ind:"早田雛的演奏風格是“左搖驅動型”。他以快節奏在比賽中佔據主動，他的進攻力量甚至讓中國乒乓球界都保持警惕。看來，她崇拜的球員是中國有禮貌的球員，而她的乒乓球則讓人聯想到以活力四射著稱的有禮貌的人物。",u: Bundle.main.url(forResource: "hh" , withExtension: "mp4")),Player(name:"木原美悠", sn:"km" ,rank:"No.15" ,bir:"2004/8/3" ,sty:"???", eq1:"???" ,eq2:"???" ,ind:"???",u: Bundle.main.url(forResource: "to" , withExtension: "mp4"))])
}
extension Players{
    static let ftw = Players(plist : [ Player (name:"鄭怡靜", sn:"ic" ,rank:"No.6" ,bir:"1997/1/22" ,sty:"典型的近台快攻打法", eq1:"MIMA ITO CARBON" ,eq2:" Nittaku Fastarc G-1&顆粒" ,ind:"正手反膠主要負責發球和正手的快攻結合弧圈，但是伊藤基本都是快攻為主，一有機會就拍，拉弧圈的使用率很少；反手生膠主要就是突擊，加控制落點，基本不離開台子，90%以上的球都被控制在近台，因為一離台，反手的威力基本就失去了，只有在近台，生膠擊打出的低沉的球，給對方會的壓力才會更大",u: Bundle.main.url(forResource: "to" , withExtension: "mp4")),Player(name:"陳思羽", sn:"sy" ,rank:"No.5" ,bir:"2000/7/7" ,sty:"弧圈快攻", eq1:"Nittaku特製球拍" ,eq2:" Beni Soki 的粘性橡膠“Kyohyo 3＆Tenergy" ,ind:"早田雛的演奏風格是“左搖驅動型”。他以快節奏在比賽中佔據主動，他的進攻力量甚至讓中國乒乓球界都保持警惕。看來，她崇拜的球員是中國有禮貌的球員，而她的乒乓球則讓人聯想到以活力四射著稱的有禮貌的人物。",u: Bundle.main.url(forResource: "to" , withExtension: "mp4")),Player(name:"劉馨伊", sn:"hy" ,rank:"No.15" ,bir:"2004/8/3" ,sty:"???", eq1:"???" ,eq2:"???" ,ind:"???",u: Bundle.main.url(forResource: "to" , withExtension: "mp4"))])
}
extension Players{
    static let mjap = Players(plist : [ Player (name:"鄭怡靜", sn:"ic" ,rank:"No.6" ,bir:"1997/1/22" ,sty:"典型的近台快攻打法", eq1:"MIMA ITO CARBON" ,eq2:" Nittaku Fastarc G-1&顆粒" ,ind:"正手反膠主要負責發球和正手的快攻結合弧圈，但是伊藤基本都是快攻為主，一有機會就拍，拉弧圈的使用率很少；反手生膠主要就是突擊，加控制落點，基本不離開台子，90%以上的球都被控制在近台，因為一離台，反手的威力基本就失去了，只有在近台，生膠擊打出的低沉的球，給對方會的壓力才會更大",u: Bundle.main.url(forResource: "to" , withExtension: "mp4")),Player(name:"陳思羽", sn:"sy" ,rank:"No.5" ,bir:"2000/7/7" ,sty:"弧圈快攻", eq1:"Nittaku特製球拍" ,eq2:" Beni Soki 的粘性橡膠“Kyohyo 3＆Tenergy" ,ind:"早田雛的演奏風格是“左搖驅動型”。他以快節奏在比賽中佔據主動，他的進攻力量甚至讓中國乒乓球界都保持警惕。看來，她崇拜的球員是中國有禮貌的球員，而她的乒乓球則讓人聯想到以活力四射著稱的有禮貌的人物。",u: Bundle.main.url(forResource: "to" , withExtension: "mp4")),Player(name:"劉馨伊", sn:"hy" ,rank:"No.15" ,bir:"2004/8/3" ,sty:"???", eq1:"???" ,eq2:"???" ,ind:"???",u: Bundle.main.url(forResource: "to" , withExtension: "mp4"))])
}
extension Players{
    static let fchina = Players(plist : [ Player (name:"鄭怡靜", sn:"ic" ,rank:"No.6" ,bir:"1997/1/22" ,sty:"典型的近台快攻打法", eq1:"MIMA ITO CARBON" ,eq2:" Nittaku Fastarc G-1&顆粒" ,ind:"正手反膠主要負責發球和正手的快攻結合弧圈，但是伊藤基本都是快攻為主，一有機會就拍，拉弧圈的使用率很少；反手生膠主要就是突擊，加控制落點，基本不離開台子，90%以上的球都被控制在近台，因為一離台，反手的威力基本就失去了，只有在近台，生膠擊打出的低沉的球，給對方會的壓力才會更大",u: Bundle.main.url(forResource: "to" , withExtension: "mp4")),Player(name:"陳思羽", sn:"sy" ,rank:"No.5" ,bir:"2000/7/7" ,sty:"弧圈快攻", eq1:"Nittaku特製球拍" ,eq2:" Beni Soki 的粘性橡膠“Kyohyo 3＆Tenergy" ,ind:"早田雛的演奏風格是“左搖驅動型”。他以快節奏在比賽中佔據主動，他的進攻力量甚至讓中國乒乓球界都保持警惕。看來，她崇拜的球員是中國有禮貌的球員，而她的乒乓球則讓人聯想到以活力四射著稱的有禮貌的人物。",u: Bundle.main.url(forResource: "to" , withExtension: "mp4")),Player(name:"劉馨伊", sn:"hy" ,rank:"No.15" ,bir:"2004/8/3" ,sty:"???", eq1:"???" ,eq2:"???" ,ind:"???",u: Bundle.main.url(forResource: "to" , withExtension: "mp4"))])
}
extension Players{
    static let mgm = Players(plist : [ Player (name:"鄭怡靜", sn:"ic" ,rank:"No.6" ,bir:"1997/1/22" ,sty:"典型的近台快攻打法", eq1:"MIMA ITO CARBON" ,eq2:" Nittaku Fastarc G-1&顆粒" ,ind:"正手反膠主要負責發球和正手的快攻結合弧圈，但是伊藤基本都是快攻為主，一有機會就拍，拉弧圈的使用率很少；反手生膠主要就是突擊，加控制落點，基本不離開台子，90%以上的球都被控制在近台，因為一離台，反手的威力基本就失去了，只有在近台，生膠擊打出的低沉的球，給對方會的壓力才會更大",u: Bundle.main.url(forResource: "to" , withExtension: "mp4")),Player(name:"陳思羽", sn:"sy" ,rank:"No.5" ,bir:"2000/7/7" ,sty:"弧圈快攻", eq1:"Nittaku特製球拍" ,eq2:" Beni Soki 的粘性橡膠“Kyohyo 3＆Tenergy" ,ind:"早田雛的演奏風格是“左搖驅動型”。他以快節奏在比賽中佔據主動，他的進攻力量甚至讓中國乒乓球界都保持警惕。看來，她崇拜的球員是中國有禮貌的球員，而她的乒乓球則讓人聯想到以活力四射著稱的有禮貌的人物。",u: Bundle.main.url(forResource: "to" , withExtension: "mp4")),Player(name:"劉馨伊", sn:"hy" ,rank:"No.15" ,bir:"2004/8/3" ,sty:"???", eq1:"???" ,eq2:"???" ,ind:"???",u: Bundle.main.url(forResource: "to" , withExtension: "mp4"))])
}
struct BigPlayers{
    let bigplist : [Players]
}
extension BigPlayers{
    static var all = BigPlayers( bigplist: [Players.fjap,Players.ftw,Players.fchina,Players.mchina,Players.mjap,Players.mgm])
}
extension Image {
    func photoStyle()-> some View{
        self.resizable().clipShape(Circle()).scaledToFit().frame(width: 70, height: 70)
    }
}
