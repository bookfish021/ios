//
//  model.swift
//  book
//
//  Created by User02 on 2020/10/20.
//

import SwiftUI

struct cardmodel: ViewModifier{
    func body(content: Content) ->some View{
        content
            .foregroundColor(Color("textcolor"))
            .frame(width: 200, height: 30)
            .background(Color("maincolor"))
            .cornerRadius(8)
            .frame(width: 250, height: 35)
    }
}

