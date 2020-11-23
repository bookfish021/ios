//
//  NovelList.swift
//  novel
//
//  Created by User18 on 2020/11/16.
//

import SwiftUI

struct NovelList: View {
    @StateObject var novelData = NovelData()
    @State private var showEditnovel = false
    @State private var agreedToTerms = false
    @State private var searchText = ""
    var filterWords: [Novel] {
               return novelData.Novels.filter({ searchText.isEmpty ? true : $0.name.contains(searchText) })
           }
    var body: some View {
        NavigationView {
            List {
                
                SearchBar(text: $searchText)
                ForEach(filterWords){(novel) in
                    NavigationLink(destination: NovelEditor(novelData: self.novelData)){
                        novelRow(novel: novel)
                                    }
                                }
                /*ForEach(novelData.Novels.indices, id: \.self) { (index) in
                    
                    NavigationLink(
                        destination: NovelEditor( editNovelIndex: index, novelData: novelData),
                        label: {
                            novelRow(novel: novelData.Novels[index])
                        })
                    
                }*/
                .onDelete(perform: { indexSet in
                    novelData.Novels.remove(atOffsets: indexSet)
                })
                .onMove { (indexSet, index) in
                    self.novelData.Novels.move(fromOffsets: indexSet,toOffset: index)
                    }
            }
            .navigationTitle("小說紀錄")
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showEditnovel = true
                    }, label: {
                        Image(systemName: "plus.circle.fill")
                        
                    })
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
            })
            .sheet(isPresented: $showEditnovel, content: {
                NavigationView {
                    NovelEditor(novelData: novelData)
                }
            })
        }
    }
}

struct NovelList_Previews: PreviewProvider {
    static var previews: some View {
        NovelList()
    }
}
