//
//  Profile.swift
//  AppTutorialInSwiftUI
//
//  Created by Alexandr Bahno on 03.06.2023.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotification = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "g_kumar")
    
    
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "☀️"
        case autumn = "🍁"
        case winter = "☃️"
        
        var id: String {rawValue}
    }
}
