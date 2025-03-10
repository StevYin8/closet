//
//  ViewController.swift
//  Closet
//
//  Created by 尹少军 on 2025/3/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                // Navigation Bar Title
                Text("衣橱记")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(.black)
                    .padding(.top, 20)
                
                // Tabs
                HStack(spacing: 40) {
                    VStack {
                        Image(systemName: "tshirt")
                            .foregroundColor(.black)
                        Text("搭配建议")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                    }
                    VStack {
                        Image(systemName: "archivebox")
                            .foregroundColor(.black)
                        Text("衣物管理")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                    }
                    VStack {
                        Image(systemName: "person.crop.circle")
                            .foregroundColor(.black)
                        Text("风格推荐")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                    }
                }
                .padding(.top, 20)
                
                // Divider
                Divider()
                    .background(Color(UIColor.systemGray4))
                    .padding(.vertical, 20)
                
                // Description Text
                Text("记录你的衣物，智能推荐穿搭，探索你的时尚风格。")
                    .font(.system(size: 14))
                    .foregroundColor(Color(UIColor.darkGray))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 40)
                
                Spacer()
                
                // Phone Number Login Button
                Button(action: {
                    // Action for phone number login
                }) {
                    Text("手机号登录")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(12)
                }
                .padding(.horizontal, 40)
                .padding(.bottom, 12)
                
                // Apple Login Button
                Button(action: {
                    // Action for Apple login
                }) {
                    HStack {
                        Image(systemName: "applelogo")
                            .foregroundColor(.black)
                        Text("通过苹果登录")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(.black)
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.black, lineWidth: 1)
                    )
                }
                .padding(.horizontal, 40)
                
                // Disclaimer Text
                Text("点击登录并开始体验，即代表您已阅读并同意 衣橱记用户协议 & 衣橱记隐私协议。")
                    .font(.system(size: 12))
                    .foregroundColor(Color(UIColor.lightGray))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 40)
                    .padding(.top, 16)
                    .padding(.bottom, 20)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                    .overlay(
                        HStack {
                            Spacer()
                            Text("衣橱记用户协议")
                                .foregroundColor(Color(UIColor.systemBlue))
                                .onTapGesture {
                                    // Action for user agreement
                                }
                            Text(" & ")
                                .foregroundColor(Color(UIColor.lightGray))
                            Text("衣橱记隐私协议")
                                .foregroundColor(Color(UIColor.systemBlue))
                                .onTapGesture {
                                    // Action for privacy agreement
                                }
                            Spacer()
                        }
                    )
            }
            .background(Color(UIColor.systemGray6))
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

