//
//  ContentView.swift
//  dice
//
//  Created by User18 on 2020/10/12.
//

import SwiftUI

struct ContentView: View {
    
    @State private var luckey = 0
    @State private var showsign = false
    @State private var lucksign = ["","上\n上\n籤","上\n籤","中\n平\n籤","下\n籤","下\n下\n籤"]
    @State private var lucksignb = ["","luck","luck","luck","luck","luck","luck"]
    var body: some View {
        
        
        ZStack{
            
            Group{//background
                Image("background")
                    .frame(width:512,height:684)
                    .scaleEffect(1.1)
                        
                Image("background")
                    .frame(width:512,height:684)
                    .scaleEffect(1.1)
                    .offset(x:0,y:-100)
            }
            Group{//lucksign
                Image(lucksignb[luckey])
                    .frame(width:10,height:10)
                    .scaleEffect(0.09)
                Text(lucksign[luckey])
                    .font(.system(size:50))
                
            }
            
            
            Text("來求個籤吧ＯＷＯ")
                .font(.system(size:30))
                .offset(x:0,y:-300)
            
            Button(
                action:{
                    let randsign = 1...5
                    self.luckey = randsign.randomElement()!
                    self.showsign = true
                    
                }
            ){
                Image("sign")
                    .frame(width:800,height:800)
                    .scaleEffect(0.08)
                    .offset(x:0,y:300)
            }
            .alert(isPresented: $showsign){() -> Alert in
                return Alert(title: Text("你的籤運是"),message:Text(lucksign[luckey]))
            }
            
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
