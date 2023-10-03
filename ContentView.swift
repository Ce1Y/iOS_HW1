//
//  ContentView.swift
//  IOS-HW1
//
//  Created by User06 on 2023/9/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Color.blue
                .ignoresSafeArea()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .frame(height: 100)
            // 畫面上方的搜尋欄
            ZStack(alignment: .leading) {
                Rectangle()
                    .fill(Color.gray)
                    .frame(height: 25)
                    .padding(10)
                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                    .background(
                        Rectangle()
                            .fill(Color.blue)
                    )
                HStack {
                    Image("magnifier")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15, alignment: .center)
                    Text("婚姻心測")
                }
                .opacity(0.5)
                .offset(x: 20)
            }
            .offset(y: -10)
            Spacer()
                .frame(height: 5)

            // 搜尋欄下方的主題列
            HStack(alignment: .center) {
                Spacer()
                Text("推薦")
                Spacer()
                Text("全部")
                Spacer()
                Text("追蹤")
                Spacer()
                Text("主題")
                Spacer()
            }
            
            Rectangle()
                .fill(Color.gray)
                .frame(height: 1)
                .opacity(0.2)
            
            UserView(typeIcon: "apple", typeName: "Apple ·２天", title: "#iPhone i15系列真的爛爆，為什麼可以賣這麼好？", content: "i15pro/pro max 完全走三星回頭路，回想三星S21、S2...", like: "226", comment: "306")
            Group {
                // 每個卡片之間的灰色間隔
                Rectangle()
                    .fill(Color.gray)
                    .frame(height: 5)
                    .opacity(0.2)
                // 一個文章卡片
                UserView(typeIcon: "message-square", typeName: "閒聊 ·１天", title: "當一年兵好處很多啊!", content: "男生跟女生（尤其是94年次男生）請進", like: "106", comment: "78")
                Rectangle()
                    .fill(Color.gray)
                    .frame(height: 5)
                    .opacity(0.2)
                UserView(typeIcon: "pixel-robot", typeName: "動漫 ·２天", title: "＃討論 2023年 十月新番", content: "本次新番時間均為+9時區的時間 請務必注意，每日放送...", like: "87", comment: "12")
                Rectangle()
                    .fill(Color.gray)
                    .frame(height: 5)
                    .opacity(0.2)
                UserView(typeIcon: "jujutsu", typeName: "咒術迴戰 ·２天", title: "#有雷#有雷 芥見老師這周休刊 我來幫大家畫23...", content: "聽說很多人不喜歡236話，閒著沒事就來幫大家畫一...", like: "186", comment: "54")
                Rectangle()
                    .fill(Color.gray)
                    .frame(height: 5)
                    .opacity(0.2)
                Spacer()
                ZStack {
                    UserView(typeIcon: "makeup", typeName: "美妝 ·４天", title: "有人聽過或聽過皙之密嗎", content: "因為圖片沒顯示出來我就隨便打了", like: "999", comment: "999")

                    // 最下方的工具列
                    HStack {
                        Spacer()
                        Group {
                            Image("home")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Spacer()
                            Image("sort")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Spacer()
                            Image("page")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Spacer()
                            Image("shop")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Spacer()
                            Image("bell")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Spacer()
                        }
                        Image("hamberger")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Spacer()
                    }
                    .background(
                        Rectangle()
                            .fill(Color.white)
                            .frame(height: 50)
                    )
                    .offset(y: 50)
                }
            }
            Spacer()
                .frame(height: 120)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// 一個主題的卡片模板
struct UserView: View {
    let typeIcon: String
    let typeName: String
    let title: String
    let content: String
    let like: String
    let comment: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(typeIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 13, height: 13)
                    .clipShape(Circle())
                    .padding(3)
                    .background(
                        Circle()
                            .stroke(Color.gray, lineWidth: 1)
                            .opacity(0.4)
                    )
                Text(typeName)
                    .foregroundColor(.gray)
                    .font(.system(size: 13))
                Spacer()
                    .frame(width: 200)
                Image("menu")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(Rectangle())
                    .padding(3)
                    .opacity(0.6)
            }
            Spacer()
                .frame(height: 10)
            Text(title)
                .font(.system(size: 15))
            Spacer()
                .frame(height: 8)
            Text(content)
                .font(.system(size: 13))
                .opacity(0.5)
            HStack {
                Group {
                    ZStack() {
                        Image("face-with-tears-of-joy")
                            .resizable()
                            .scaledToFit()
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .frame(width: 15, height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .rotationEffect(.degrees(-20))
                            .background(Circle().stroke(Color.white, lineWidth: 1))
                            .offset(x: 5)
                        
                        Image("white-heart")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .padding(3.5)
                            .frame(width: 15, height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(
                                Circle()
                                    .strokeBorder(Color.white, lineWidth: 1.5)
                                    .background(Circle().fill(Color.red))
                            )
                    }
                    Spacer()
                        .frame(width: 20)
                    Text(like)
                        .font(.system(size: 13))
                        .foregroundColor(.gray)
                        .opacity(0.5)
                    Spacer()
                        .frame(width: 20)
                    Image("message-bubble")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .padding(3.5)
                        .frame(width: 15, height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(
                            Circle()
                                .strokeBorder(Color.white, lineWidth: 1.5)
                                .background(Circle().fill(Color.blue).opacity(0.8))
                        )
                    Spacer()
                        .frame(width: 10)
                    Text(comment)
                        .font(.system(size: 13))
                        .foregroundColor(.gray)
                        .opacity(0.5)
                    Spacer()
                        .frame(width: 15)
                    Image("bookmark-fill")
                        .resizable()
                        .scaledToFit()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 15, height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Circle().stroke(Color.white, lineWidth: 1))
                    Spacer()
                        .frame(width: 5)
                }
                Text("收藏")
                    .font(.system(size: 13))
                    .foregroundColor(.gray)
                    .opacity(0.5)
            }
        }
    }
}
