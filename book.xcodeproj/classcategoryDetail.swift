//
//  classcategoryDetail.swift
//  book
//
//  Created by User02 on 2020/10/15.
//

import SwiftUI

struct classcategoryDetail: View {
    let classcategory: Classcategory
    var body: some View {
        VStack{
            if(0 < (classcategory.category1).count){
                Text("大一")
                ScrollView(.vertical) {
                    let columns = [GridItem()]
                    LazyVGrid(columns: columns) {
                        ForEach(0 ..< (classcategory.category1).count){(item) in
                            Text(classcategory.category1[item])
                        }.modifier(cardmodel())
                    }
                }
            }
            
            if(0 < (classcategory.category2).count){
                Text("大二")
                ScrollView(.vertical) {
                    let columns = [GridItem()]
                    LazyVGrid(columns: columns) {
                        ForEach(0 ..< (classcategory.category2).count){(item) in
                            Text(classcategory.category2[item])
                        }.modifier(cardmodel())
                    }
                }
            }
            
            if(0 < (classcategory.category3).count){
                Text("大三")
                ScrollView(.vertical) {
                    let columns = [GridItem()]
                    LazyVGrid(columns: columns) {
                        ForEach(0 ..< (classcategory.category3).count){(item) in
                            Text(classcategory.category3[item])
                        }.modifier(cardmodel())
                    }
                }
            }
                
            if(0 < (classcategory.category4).count){
                Text("大四")
                ScrollView(.vertical) {
                    let columns = [GridItem()]
                    LazyVGrid(columns: columns) {
                        ForEach(0 ..< (classcategory.category4).count){(item) in
                            Text(classcategory.category4[item])
                        }.modifier(cardmodel())
                    }
                }
            } /*           Text("大一")
            List(0 ..< (classcategory.category1).count){(item) in
                Text(classcategory.category1[item])
            }
            Text("大二")
            List(0 ..< (classcategory.category2).count){(item) in
                Text(classcategory.category2[item])
            }
            Text("大三")
            List(0 ..< (classcategory.category3).count){(item) in
                Text(classcategory.category3[item])
                    .modifier(cardmodel())
            }
            Text("大四")
            List(0 ..< (classcategory.category4).count){(item) in
                Text(classcategory.category4[item])
                    .modifier(cardmodel())
            }*/
        }.navigationTitle(classcategory.category)
    }
}

struct classcategoryDetail_Previews: PreviewProvider {
    static var previews: some View {
        classcategoryDetail(classcategory: Classcategory(category:"必修",category1:["微積分(一)","微積分(二)","離散數學","線性代數"],category2:["機率論","組合論"],category3:["數值分析"],category4:[]))
    }
}
