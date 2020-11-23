//
//  NovelData.swift
//  novel
//
//  Created by User18 on 2020/11/16.
//

import Foundation
import Combine

class NovelData: ObservableObject {
    
    @Published var Novels = [Novel]()
    
    var cancellable: AnyCancellable?
        
        
        init() {
            
            if let data = UserDefaults.standard.data(forKey: "novels") {
                let decoder = JSONDecoder()
                if let decodedData = try? decoder.decode([Novel].self, from: data) {
                    Novels = decodedData
                }
            }
            
            
            cancellable = $Novels
                .sink { (value) in
                    let encoder = JSONEncoder()
                    do {
                        let data = try encoder.encode(value)
                        UserDefaults.standard.set(data, forKey: "novels")
                    } catch {
                        
                    }
            }
            
        }
    }
