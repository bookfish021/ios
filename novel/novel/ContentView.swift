//
//  ContentView.swift
//  novel
//
//  Created by User18 on 2020/11/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            /*Text("書蟲\n你好OWO")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .padding()
            NavigationLink(destination: NovelList()){
                Text("書蟲\n你好OWO")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .padding()
            }*/
            TabView {
                NovelList()
                    .tabItem{
                        Image(systemName:"house")
                        Text("主頁")
                    }
                Chart(novelData: NovelData())
                    .tabItem{
                        Image(systemName:"chart.pie")
                        Text("星星總計")
                    }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
