//
//  classfieldDetail.swift
//  book
//
//  Created by User02 on 2020/10/15.
//

import SwiftUI

/*ScrollView(.vertical) {
    let columns = [GridItem()]
    LazyVGrid(columns: columns) {
        ForEach(classfields.indices) { (item) in
            VStack {
                NavigationLink(destination: classfieldDetail(classfield:classfields[item])){
                    classfieldRow(classfield: classfields[item])
                }
            }
        }
    }
}*/

struct classfieldDetail: View {
    let classfield: Classfield
    var body: some View {
        VStack{
            if(0 < (classfield.field1).count){
                Text("大一")
                ScrollView(.vertical) {
                    let columns = [GridItem()]
                    LazyVGrid(columns: columns) {
                        ForEach(0 ..< (classfield.field1).count){(item) in
                            Text(classfield.field1[item])
                        }.modifier(cardmodel())
                    }
                }
            }
            
            if(0 < (classfield.field2).count){
                Text("大二")
                ScrollView(.vertical) {
                    let columns = [GridItem()]
                    LazyVGrid(columns: columns) {
                        ForEach(0 ..< (classfield.field2).count){(item) in
                            Text(classfield.field2[item])
                        }.modifier(cardmodel())
                    }
                }
            }
            
            if(0 < (classfield.field3).count){
                Text("大三")
                ScrollView(.vertical) {
                    let columns = [GridItem()]
                    LazyVGrid(columns: columns) {
                        ForEach(0 ..< (classfield.field3).count){(item) in
                            Text(classfield.field3[item])
                        }.modifier(cardmodel())
                    }
                }
            }
                
            if(0 < (classfield.field4).count){
                Text("大四")
                ScrollView(.vertical) {
                    let columns = [GridItem()]
                    LazyVGrid(columns: columns) {
                        ForEach(0 ..< (classfield.field4).count){(item) in
                            Text(classfield.field4[item])
                        }.modifier(cardmodel())
                    }
                }
            }
            
        }.navigationTitle(classfield.field)
    }
}

struct classfieldDetail_Previews: PreviewProvider {
    static var previews: some View {
        classfieldDetail(classfield: Classfield(field:"數學",field1:["微積分(- )","微積分(二)","離散數學","線性代數"],field2:["機率論","組合論"],field3:["數值分析"],field4:[]))
    }
}
