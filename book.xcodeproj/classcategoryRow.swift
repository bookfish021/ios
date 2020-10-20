//
//  classcategoryRow.swift
//  book
//
//  Created by User02 on 2020/10/15.
//

import SwiftUI

struct classcategoryRow: View {
    let classcategory: Classcategory
    var body: some View {
        HStack{
            Text(classcategory.category)
                .foregroundColor(Color("textcolor"))
                .frame(width: 200, height: 50)
                .background(Color("maincolor"))
                .cornerRadius(8)
                .frame(width: 250, height: 100)

        }
    }
}

struct classcategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        classcategoryRow(classcategory: Classcategory(category:"必修",category1:["微積分(- )","微積分(二)","離散數學","線性代數"],category2:["機率論","組合論"],category3:["數值分析"],category4:[])) .previewLayout(.sizeThatFits)
    }
}
