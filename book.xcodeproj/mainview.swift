//
//  mainview.swift
//  book
//
//  Created by User02 on 2020/10/14.
//

import SwiftUI


struct mainview: View {
    
    //let teacher: Teacher
    @State private var rotateDegree: Double=0
    
    var body: some View {
        
        NavigationView{
            List{
                Section(header: Text("師資")
                            .multilineTextAlignment(.center)){
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack(spacing: 10.0){
                            ForEach(0 ..< teachers.count){(item) in
                                NavigationLink(destination: teacherDetail(teacher: teachers[item])){
                                    teacherscroll(name: teachers[item].pic[0])
                                }
                            }
                        }
                    }
                }
                Section(header: Text("課程地圖")
                            .multilineTextAlignment(.center)){
                    ScrollView(.vertical) {
                        let columns = [GridItem()]
                        LazyVGrid(columns: columns) {
                            NavigationLink(destination: classyearList()){
                                Text("年級")
                                    .foregroundColor(Color("textcolor"))
                                    .frame(width: 2500, height: 50)
                                    .background(Color("maincolor"))
                                    .cornerRadius(8)
                                    .frame(width: 2500, height: 100)
                            }
                            NavigationLink(destination: classcategoryList()){
                                Text("類型")
                                    .foregroundColor(Color("textcolor"))
                                    .frame(width: 2500, height: 50)
                                    .background(Color("maincolor"))
                                    .cornerRadius(8)
                                    .frame(width: 2500, height: 100)
                            }
                            NavigationLink(destination: classfieldList()){
                                Text("選修領域")
                                    .foregroundColor(Color("textcolor"))
                                    .frame(width: 2500, height: 50)
                                    .background(Color("maincolor"))
                                    .cornerRadius(8)
                                    .frame(width: 2500, height: 100)
                            }
                        }
                    }
                }
                ZStack{//fishdetail
                    Button(action:{self.rotateDegree=360}){
                        Image("ntou")
                            
                            .rotationEffect(.degrees(rotateDegree))
                            .animation(
                                Animation.linear(duration: 2)
                                    .repeatForever()
                            )
                    }.scaleEffect(0.05)
                    .offset(x: -300,y :-500)
                    .buttonStyle(PlainButtonStyle())
                    

                }
            }.navigationTitle("課程了解")
        }
    }
}


struct teacherscroll: View{
    
    var name:String
    var body: some View{
        
        Image(name)
            .resizable()
            .overlay(Circle().stroke(Color("maincolor"),lineWidth: 8))
            .scaledToFill()
            .frame(width: 80, height: 80)
            .clipped()
            .clipShape(Circle())
    }
}


struct mainview_Previews: PreviewProvider {
    static var previews: some View {
        mainview()
            .preferredColorScheme(.dark)
    }
}
