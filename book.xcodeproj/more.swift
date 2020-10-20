//
//  more.swift
//  book
//
//  Created by User02 on 2020/10/20.
//

import SwiftUI

struct more: View {
    var body: some View {
        Link(destination: URL(string:"https://www.cse.ntou.edu.tw/")!,
             label:{
                VStack{
                    Image("ntou")
                        .frame(width: 120, height: 120)
                        .scaleEffect(0.1)
                    Text("海大資工")
                        .foregroundColor(Color("textcolor"))
                        .padding(.all, 10.0)
                        .background(Color("maincolor"))
                        .cornerRadius(15)
                }
             }
        )
    }
}

struct more_Previews: PreviewProvider {
    static var previews: some View {
        more()
    }
}
