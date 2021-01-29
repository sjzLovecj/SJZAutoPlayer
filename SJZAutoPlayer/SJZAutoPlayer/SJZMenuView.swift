//
//  SJZMenuView.swift
//  SJZAutoPlayer
//
//  Created by SJZ on 2021/1/29.
//

import SwiftUI

struct SJZMenuView: View {
    var body: some View {
        
        HStack {
            Spacer().frame(width: 10)
            
            VStack(alignment: .leading, spacing: 5, content: {
                Spacer().frame(height: 10)
                Button(action: {
                    SJZFileManager.openFinder()
                }, label: {
                    HStack {
                        Image(systemName: "folder")
                        Text("选择文件夹")
                    }
                })
                
                Button(action: {
//                    SJZFileManager.openFinder()
                    
                    exit(1)
                }, label: {
                    HStack {
                        Image(systemName: "folder")
                        Text("关闭应用")
                    }
                })
                
                Spacer()
            })
            
            Spacer()
        }

    }
}

struct SJZMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SJZMenuView()
    }
}
