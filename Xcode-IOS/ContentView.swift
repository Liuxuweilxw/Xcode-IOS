//
//  ContentView.swift
//  Xcode-IOS
//
//  Created by liuxuwei on 2024/1/29.
//

import SwiftUI


struct ContentView: View {
    

    var body: some View {
//    111111
//        VStack{
//            Spacer()
//            CardView(icon:"sun.min",title: "嗨！新同学", color: Color.blue)
//            CardView(icon:"sunrise",title: "欢迎学习", color: Color.purple)
//                .scaleEffect(0.98)
//                .offset(x:0,y: -40)
//            CardView(icon:"moon",title: "我的SwiftUI课程", color: Color.orange)
//                .scaleEffect(0.96)
//                .offset(x:0,y: -90)
//        }
//    33333
        NavigationView{
            TabView{
                Group{
                    Tab1()
                        .tabItem {
                            Label("Tab 1", systemImage: "book")
                        }
                    Tab2()
                        .tabItem {
                            Label("Tab 2", systemImage: "location")
                        }
                    Tab3()
                        .tabItem {
                            Label("Tab 3", systemImage: "person")
                        }
                }
                .toolbarBackground(.clear, for: .tabBar)
                .toolbarBackground(.hidden, for: .tabBar)
    //            .toolbarColorScheme(.dark, for: .tabBar)
            }
        }
        
//        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        EmptyView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View {
    var title1 : String
    var title2 : String
    var body: some View {
        VStack{
            HStack {
                VStack(alignment: .leading, spacing:10){
                    Text(title1)
                        .font(.system(.body))
                        .fontWeight(.bold)
                        .foregroundStyle(LinearGradient(colors: [.black,.blue], startPoint: .leading, endPoint: .trailing))
                    Text(title2)
                        .font(.system(.largeTitle))
                        .fontWeight(.bold)
                        .foregroundStyle(LinearGradient(colors: [.black,.blue], startPoint: .leading, endPoint: .trailing))
                }
                Spacer()
            }
            
        }
        .frame(maxWidth: .infinity,maxHeight: 60)
        .background(.clear)
        .shadow(color: .gray,radius: 5,x: 0,y: 5)
        .padding()
    }
}

struct Card: View {
    var title : String
    var price:String
    var remark:String
    var color:Color
    var body: some View {
        
        VStack(){
            Text(title)
                .font(.system(.title))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Text(price)
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Text(remark)
                .font(.system(.headline))
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity)
        .padding(40)
        .background(color)
        .cornerRadius(15)
//        .padding()
    }
}


struct CardView:View{
    var icon : String
    var title : String
    var color : Color
    var textColor : Color
    var body:some View{
        VStack{
            
            Image(systemName: icon)
                .font(.system(.title)).foregroundColor(.white)
                .padding(2)
            Text(title)
                .font(.system(.title))
                .fontWeight(.bold)
                .foregroundColor(textColor)
        }
        .frame(maxWidth: .infinity,maxHeight: 200)
        .background(color)
        .cornerRadius(20)
        .padding(.horizontal)
        .shadow(color: .gray,radius: 10,x: 0,y: 5)
    }
    
}

struct ExtractedView: View {
    var title1 :String
    var title2 : String
    var button : String
    var icon : String
    var body: some View {
        VStack{
            HStack {
                VStack(alignment: .leading, spacing:10){
                    Text(title1)
                        .font(.system(.body))
                        .fontWeight(.bold)
                        .foregroundStyle(LinearGradient(colors: [.purple,.blue], startPoint: .leading, endPoint: .trailing))
                    Text(title2)
                        .font(.system(.largeTitle))
                        .fontWeight(.bold)
                        .foregroundStyle(LinearGradient(colors: [.purple,.blue], startPoint: .leading, endPoint: .trailing))
                }.padding()
                Spacer()
            }
            HStack{
                Button(button){
                    
                }
                .frame(width: 80,height: 30)
                .font(.system(size: 15))
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(8)
                .padding()
                Spacer()
            }
            
        }
        .frame(maxWidth: .infinity,maxHeight: 200)
        .background(.white)
        .cornerRadius(20)
        .shadow(color: .gray,radius: 5,x: 0,y: 5)
        .padding()
        .overlay{
            Image(icon)
                .aspectRatio(contentMode: .fit)
                .scaleEffect(0.1)
                .offset(x:110,y: 35)
        }

    }
}

struct Tab2: View {
    var body: some View {
        VStack{
            Spacer()
            CardView(icon:"sun.min",title: "嗨！新同学", color: Color.blue,textColor: Color.white)
            CardView(icon:"sunrise",title: "欢迎学习", color: Color.purple,textColor: Color.white)
                .scaleEffect(0.98)
                .offset(x:0,y: -40)
            CardView(icon:"moon",title: "我的SwiftUI课程", color: Color.orange,textColor: Color.white)
                .scaleEffect(0.96)
                .offset(x:0,y: -90)
        }
    }
}

struct Tab3: View {
    var body: some View {
        VStack {
            HStack{
                Header(title1:"炎炎夏日",title2:"来杯饮料吗")
                Spacer()
            }
            .padding()

            HStack(spacing: 10){
                ZStack {
                    Card(title: "古茗", price: "20元", remark: "去冰", color:.orange)
                    Text("买一送一")
                        .font(.system(.subheadline))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(10)
                        .background(Color.yellow)
                        .cornerRadius(10)
                        .offset(x: 0,y: -85)

                }
                Card(title: "蜜蜜甜", price: "10元", remark: "少冰", color: .blue)
            }
            .padding()

            HStack{
                Card(title: "百道茶", price: "15元", remark: "多冰", color: .purple)
            }.padding()


            Spacer()
        }

    }
}
struct Tab1: View {
    var body: some View {
        VStack {
            Header(title1: "欢迎学习", title2: "我的SwiftUI课程")
            
            ScrollView(showsIndicators: false){
                VStack{
                    ExtractedView(title1:"iOS开发", title2:"前言",button:"马上开始",icon:"学术报告")
                    ExtractedView(title1:"iOS开发", title2:"Text教程",button:"马上开始",icon:"年末日历")
                    ExtractedView(title1:"iOS开发", title2:"Image教程",button:"马上开始",icon:"目标完成")
                    ExtractedView(title1:"iOS开发", title2:"Stack教程",button:"马上开始",icon:"业务报表")
                }
            }
            
            
            Spacer()
        }
    }
}


