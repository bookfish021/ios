//
//  NovelEditor.swift
//  novel
//
//  Created by User18 on 2020/11/16.
//

import SwiftUI

struct NovelEditor: View {
    @Environment(\.presentationMode) var presentationMode
    var editNovelIndex: Int?
    var edittagIndex: Int?
    var novelData: NovelData
    @State private var name = ""
    @State private var author = ""
    @State private var star = 1
    @State private var temp = ""
    @State private var hashtag: Array<String> = []
    @State private var ht = 0
    @State private var showsign = false
    
    
    var body: some View {
        //VStack{
        Form {
            TextField("書名", text: $name)
            TextField("作者", text: $author)
            HStack{
                ScrollView(.horizontal,showsIndicators: false){
                    HStack{
                        Text("\(star)").frame(width:30,height:40)
                        Button(action:{star=1}){
                            Image("star")
                                .resizable()
                                .frame(width:50,height:40)
                        }.frame(width:50,height:40)
                        Button(action:{star=2}){
                            if star>=2{Image("star").resizable()
                                .frame(width:50,height:40)}
                            else{Image("nonstar").resizable()
                                .frame(width:50,height:40)}
                        }.frame(width:50,height:40)
                        Button(action:{star=3}){
                            if star>=3{Image("star").resizable()
                                .frame(width:50,height:40)}
                            else{Image("nonstar").resizable()
                                .frame(width:50,height:40)}
                        }.frame(width:50,height:40)
                        Button(action:{star=4}){
                            if star>=4{Image("star").resizable()
                                .frame(width:50,height:40)}
                            else{Image("nonstar").resizable()
                                .frame(width:50,height:40)}
                        }.frame(width:50,height:40)
                        Button(action:{star=5}){
                            if star>=5{Image("star").resizable()
                                .frame(width:50,height:40)}
                            else{Image("nonstar").resizable()
                                .frame(width:50,height:40)}
                        }.frame(width:50,height:40)
                        
                        Spacer()
                    }
                }
            }
            
            /*HStack{
                Text("\(hashtag.count)")
                TextField("註記", text: $temp)
                Button(action:{
                    //hashtag.append(temp)
                    //ht=0
                    self.showsign = true
                    hashtag+=[temp]
                    temp=""
                    ht=hashtag.count
                    //self.showsign = false
                   
                }){
                    Text("增加")
                    //if(hashtag.count>0){Text(hashtag[(hashtag.count)-1])}
                    
                }.frame(width:50,height:40)
            }*/
           
  
            /*VStack{
                if(0 < hashtag.count){
                    ForEach(0 ..< hashtag.count){(item) in
                        //Button(action:{hashtag.remove(hashtag[(item)])}){
                            Text("\(item)"+"#"+hashtag[(item)])
                        //}
                        
                    }
                    //self.showsign = false
                }
           
            }*/
            
            VStack(alignment: .leading){
                Text(name).font(.title2).fontWeight(.bold)//.frame(width:300,height:30)
                //Spacer()
                HStack(alignment: .center){
                        Text(author)//.frame(width:150,height:20)
                        Image("star")
                            .resizable()
                            .frame(width:25,height:20)
                        if star>=2{Image("star").resizable().frame(width:25,height:20)}
                        else{Image("nonstar").resizable()
                            .frame(width:25,height:20)}
                        if star>=3{Image("star").resizable()
                            .frame(width:25,height:20)}
                        else{Image("nonstar").resizable()
                            .frame(width:25,height:20)}
                        if star>=4{Image("star").resizable()
                            .frame(width:25,height:20)}
                        else{Image("nonstar").resizable()
                            .frame(width:25,height:20)}
                        if star>=5{Image("star").resizable()
                            .frame(width:25,height:20)}
                        else{Image("nonstar").resizable()
                            .frame(width:25,height:20)}
                }
                    
                
            
                /*HStack{
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack{
                            if(ht > 0){
                                ForEach(0 ..< hashtag.count){(item) in
                                    Text("\(hashtag.count)")
                                    //Text(hashtag[hashtag.count-1])
                                    Text("\(item)"+"#"+hashtag[(item)])//.frame(width:25,height:20)
                                }
                            }
                        }
                        
                    }
                }*/
                
            }
            
            
        }.onAppear(perform: {
            if let editNovelIndex = editNovelIndex {
                let editNovel = novelData.Novels[editNovelIndex]
                
                name = editNovel.name
                author = editNovel.author
                star = editNovel.star
                
              
            }
        })
        .navigationBarTitle(editNovelIndex == nil ? "Add new novel" : "Edit novel")
        .toolbar(content: {
            ToolbarItem {
                Button("Save") {
                    let novel = Novel(name: name, author: author, star: star)//, ,hashtag: hashtag()
                    if let editNovelIndex = editNovelIndex {
                        novelData.Novels[editNovelIndex] = novel
                    }
                    else {
                        novelData.Novels.insert(novel, at: 0)
                    }
                    presentationMode.wrappedValue.dismiss()
                }
            }
        })
           
    }
    
}

struct NovelEditor_Previews: PreviewProvider {
    static var previews: some View {
        NovelEditor(novelData: NovelData())
    }
}



