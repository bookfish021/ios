//
//  classyearRow.swift
//  book
//
//  Created by User02 on 2020/10/14.
//

import SwiftUI

struct classyearRow: View {
    let classyear: Classyear
    var body: some View {
        HStack{
            Text(classyear.year)
                .foregroundColor(Color("textcolor"))
                .frame(width: 150, height: 50)
                .background(Color("maincolor"))
                .cornerRadius(8)
                .frame(width: 200, height: 100)

        }
    }
}

struct classyearRow_Previews: PreviewProvider {
    static var previews: some View {
        classyearRow(classyear:Classyear(year:"大一上",
                                         clasneed:["計算機概論","程式設計"], clasns:["計算機概論實習","程式設計實習"], 
                                         claselect:["產學巡禮"]))
            .previewLayout(.sizeThatFits)
    }
}
