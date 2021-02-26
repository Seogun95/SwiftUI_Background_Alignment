//
//  ContentView.swift
//  SwiftUI_Background_Alignment
//
//  Created by 김선중 on 2021/02/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
        Circle()
                .fill(Color.yellow.opacity(0.8)) //투명도설정
                .frame(width: 250, height: 250)
                
                //overlay
                .overlay(Text("Joysitck")
                            .font(.largeTitle))
                .overlay(Image(systemName: "arrow.up")
                            .font(.title)
                            .padding(),alignment: .top)
                .overlay(Image(systemName: "arrow.left")
                            .font(.title)
                            .padding(),alignment: .leading) //왼쪽
                .overlay(Image(systemName: "arrow.up.right.circle.fill")
                            .font(.title),alignment: .topTrailing) //오른쪽 위
                
                //background
                .background(Image(systemName: "arrow.right")
                                .font(.title)
                                .padding(),alignment: .trailing)
                .background(Image(systemName: "arrow.down")
                                .font(.title)
                                .padding(),alignment: .bottom)
        }
        ZStack {
                  //Circle전에 작성된 스택은 뒤로 가진다.
                   VStack {
                        Spacer()  //아이콘이 아래 이니까 spacer를 먼저 작성
                        Image(systemName: "arrow.down")
                        .font(.title)
                        .padding()
                    }
                    HStack {
                        Spacer()
                        Image(systemName: "arrow.right")
                        .font(.title)
                        .padding()
                        
                    }
                    Circle()
                        .fill(Color.yellow)
                        .opacity(0.8)
                        .frame(width: 250, height: 250 )
                    Text("Joystic")
                    .font(.largeTitle)
                    
                    //Circle 위로 ZStack이 쌓아진다.
                    ZStack(alignment: .topTrailing) {
                        Color.clear
                        Image(systemName: "arrow.up.right.circle.fill")
                        .font(.title)
                    }
                    VStack {
                        Image(systemName: "arrow.up")
                        .font(.title)
                        .padding()
                        Spacer() //아이콘이 위 이니까 spacer를 나중에 작성
                    }
                    HStack {
                        Image(systemName: "arrow.left").font(.title).padding()
                        Spacer()
                    }
                } //최상위 ZStack
                .frame(width: 250, height: 250)

        
        }
    }

    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
