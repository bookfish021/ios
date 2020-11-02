//
//  ContentView.swift
//  parent
//
//  Created by User02 on 2020/10/26.
//

import SwiftUI

struct ContentView: View {
    
    @State var sbackpic : Double = 0
    @State var write = false
    @State var word : String = ""
    @State var swords : Int = 0
    @State var xAmount : CGFloat = 0.0
    @State var yAmount : CGFloat = 0.0
    @State var textsize : CGFloat = 1.0
    @State private var textColor = Color.yellow
    @State var alignment : Int = 0
    @State private var changeColor = Color.black
    @State var rshare = 0
    @State private var showshare = false
    @State private var shareColor = Color.yellow
    @State private var Time = Date()
    @State private var showWebpage = false
    
    let backpic = ["flower","leaf","sun","grass","mountain","sea","newyear","dragon","moon","marry"]
    let words = ["","早安！\n祝您有個美好的一天","每天都要喝記得2000cc的水\n你就可以成功在150歲之前死去","美好的一天\n就應該在棉被裡度過","綠色可以保護眼睛\n還可以行光合作用","好山好水好無聊","你家住這嗎？","恭喜發財\n紅包拿來","不知道\n屈原有沒有吃過中部粽","月圓了\n臉也該圓了","我不信基督\n但我信聖誕"]
    let textAlignment:[TextAlignment] = [.leading, .center, .trailing]
    let share = ["","認同請分享","喜歡請轉發","祝您有個平安喜樂的一天"]
    
    var body: some View {
        VStack{
            HStack{
                ZStack{
                    Image(backpic[Int(sbackpic)])
                        .resizable()
                        .frame(minHeight: 0,maxHeight: 400)
                    if write{
                        Text(words[swords])
                            .offset(x: xAmount, y: yAmount)
                            .scaleEffect(textsize)
                            .foregroundColor(textColor)
                            .multilineTextAlignment(textAlignment[alignment])
                    }
                    else{
                        Text(word)
                            .foregroundColor(textColor)
                            .offset(x: xAmount, y: yAmount)
                            .scaleEffect(textsize)
                    }
                    Text(share[rshare])
                        .foregroundColor(shareColor)
                        .offset(x: 110, y: 180)
                }
            }
            Form{
                HStack{
                    Text("底圖")
                    Slider(value: $sbackpic, in: 0...9, step: 1){
                        Text(backpic[Int(sbackpic)])
                    }
                }
                HStack{
                    if write{
                        Picker("選一個喜歡的句子",selection: self.$swords){
                            ForEach(0..<words.count){(item) in
                                Text(self.words[(item)])
                            }
                        }.frame(width: 280, height: 100)
                        .clipped()
                        .pickerStyle(WheelPickerStyle())
                    }
                    else{
                        TextField("早安，我的朋友",text: $word)
                            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.black))
                    }
                    Toggle("          幫我想",isOn: $write)
                   
                }.frame(minHeight: 0,maxHeight: 100)
                DisclosureGroup("文字細部調整"){
                    HStack{
                        Stepper(value: $xAmount, in: -200...200, step: 5){
                            Text("x = \(Int(xAmount))")
                        }
                        Stepper(value: $yAmount, in: -200...200, step: 5){
                            Text("y = \(Int(yAmount))")
                        }
                    }
                    HStack{
                        Stepper(value: $textsize, in: 0.0...10, step: 0.1){
                            Text("大小 = \(Int(textsize))")
                        }
                    }
                    HStack{
                        ColorPicker("顏色", selection: $textColor)
                    }
                    HStack{
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack{
                                Button(action:{alignment=0}){
                                    Text("靠前")
                                }.frame(width: 100, height: 30, alignment: .center)
                                .background(Color.gray)
                                .foregroundColor(Color.white)
                                
                                Button(action:{alignment=1}){
                                    Text("置中")
                                }.frame(width: 100, height: 30, alignment: .center)
                                .background(Color.gray)
                                .foregroundColor(Color.white)
                                
                                Button(action:{alignment=2}){
                                    Text("靠後")
                                }.frame(width: 100, height: 30, alignment: .center)
                                .background(Color.gray)
                                .foregroundColor(Color.white)
                            }
                        }
                    }
                }
                HStack{
                    Text("結語")
                    Button(
                        action:{
                            let randshare = 0...3
                            self.rshare = randshare.randomElement()!
                            self.showshare = true
                        }
                    ){
                        Text("抽")
                            .frame(width: 100, height: 30, alignment: .center)
                            .background(Color.yellow)
                            .foregroundColor(Color.red)
                    }
                    .alert(isPresented: $showshare){() -> Alert in
                        return Alert(title: Text("您抽到了"),message:Text("“"+share[rshare]+"“"))
                    }
                    ColorPicker("顏色", selection: $shareColor)
                }
                HStack{
                    DatePicker("完成時間", selection: $Time,displayedComponents: .date)
                }
                HStack{
                    Button("分享!") {
                        self.showWebpage = true
                    }
                    .sheet(isPresented: $showWebpage) {
                        SafariView(url: URL(string: "https://line.me/R/")!)
                    }
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
