//
//  SJZFileManager.swift
//  SJZAutoPlayer
//
//  Created by SJZ on 2021/1/29.
//

import Cocoa
import SwiftUI

class SJZFileManager: NSObject {
    
    // 文件管理对象
    static let fileManager = FileManager.default
    static let userDefault = UserDefaults.standard
    
    // 文件路径
    static var pathStr = userDefault.string(forKey: "FilePath") ?? ""
    
    // 打开文件选择器
    class func openFinder() {
        let panel = NSOpenPanel()
        panel.allowsMultipleSelection = false
        panel.canChooseDirectories = true
        panel.canChooseFiles = false
        panel.allowsOtherFileTypes = false
        panel.setFrame(NSRect(x: 0, y: 0, width: 500, height: 300), display: true)
        panel.beginSheetModal(for: NSApplication.shared.keyWindow!) { (result) in
            if result == .OK {
                pathStr = panel.urls.first?.path ?? ""
                userDefault.setValue(pathStr, forKey: "FilePath")
                getFileList()
            }
        }
        NSApplication.shared.keyWindow!.addChildWindow(panel, ordered: .above)
    }
    
    // 获取当前文件夹下，文件列表
    class func getFileList() {
        // 判断文件或者文件夹是否
        let exist = fileManager.fileExists(atPath: pathStr)
        
        guard exist else {
            print("文件夹不存在")
            return
        }
        
        let tempArray = try? fileManager.contentsOfDirectory(atPath: pathStr)
        
        guard let tempArr = tempArray, !tempArr.isEmpty else {
            print("未能获取文件夹下文件")
            return
        }
        
        for fileName in tempArr {
            print(fileName)
        }
    }
    
}
