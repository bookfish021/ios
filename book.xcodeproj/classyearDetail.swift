//
//  classyearDetail.swift
//  book
//
//  Created by User02 on 2020/10/14.
//

import SwiftUI

struct classyearDetail: View {
    let classyear: Classyear
    var body: some View{
        VStack{
            
            if(0 < (classyear.claselect).count){
                Text("選修")
                ScrollView(.vertical) {
                    let columns = [GridItem()]
                    LazyVGrid(columns: columns) {
                        ForEach(0 ..< (classyear.claselect).count){(item) in
                            Text(classyear.claselect[item])
                        }.modifier(cardmodel())
                    }
                }
            }
            if(0 < (classyear.clasneed).count){
                            Text("必修")
                            ScrollView(.vertical) {
                                let columns = [GridItem()]
                                LazyVGrid(columns: columns) {
                                    ForEach(0 ..< (classyear.clasneed).count){(item) in
                                        Text(classyear.clasneed[item])
                                    }.modifier(cardmodel())
                                }
                            }
                        }
            
            if(0 < (classyear.clasns).count){
                Text("必選修")
                ScrollView(.vertical) {
                let columns = [GridItem()]
                    LazyVGrid(columns: columns) {
                        ForEach(0 ..< (classyear.clasns).count){(item) in
                            Text(classyear.clasns[item])
                        }.modifier(cardmodel())
                    }
                }
            }
            
        }.navigationTitle(classyear.year)
        //.spacer()
        
    }
}

struct classyearDetail_Previews: PreviewProvider {
    static var previews: some View {
        classyearDetail(classyear:Classyear(year:"大一上",
                                            clasneed:["計算機概論","程式設計"],clasns:["計算機概論實習","程式設計實習"],
                                            claselect:["產學巡禮"]))
    }
}
