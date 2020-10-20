//
//  ContentView.swift
//  book
//
//  Created by User02 on 2020/10/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView {
                mainview()
                    .tabItem{
                        Image(systemName:"house")
                        Text("主頁")
                    }
                teacherList()
                    .tabItem{
                        Image(systemName:"person")
                        Text("老師")
                    }
                classallList()
                    .tabItem{
                        Image(systemName:"pencil")
                        Text("課程")
                    }
                more()
                    .tabItem{
                        Image(systemName:"ellipsis")
                        Text("更多")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                //.preferredColorScheme(.dark)
        }
    }
}
