//
//  classfieldRow.swift
//  book
//
//  Created by User02 on 2020/10/15.
//

import SwiftUI

struct classfieldRow: View {
    let classfield: Classfield
    var body: some View {
        HStack{
            Text(classfield.field)
                .foregroundColor(Color("textcolor"))
                .frame(width: 200, height: 50)
                .background(Color("maincolor"))
                .cornerRadius(8)
                .frame(width: 250, height: 100)
        }
    }
}

struct classfieldRow_Previews: PreviewProvider {
    static var previews: some View {
        classfieldRow(classfield: Classfield(field:"數學",field1:["微積分(- )","微積分(二)","離散數學","線性代數"],field2:["機率論","組合論"],field3:["數值分析"],field4:[])) .previewLayout(.sizeThatFits)
    }
}
