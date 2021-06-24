//
//  AnalyticsManager.swift
//  PMS-iOS-V2
//
//  Created by GoEun Jeong on 2021/06/07.
//

import DeviceCheck
import FirebaseAnalytics

public enum AnalyticsManager: String {
    // PMS
    case view_PMS
    case view_signIn
    case view_signUp
    
    // Tabbar
    case view_calendar
    case view_meal
    case view_notice
    case view_letter
    case view_introduce
    case view_mypage
    
    // Introduce
    case view_notice_detail
    case view_letter_detail
    case view_clubIntroduce
    case view_club_detail
    case view_companyIntroduce
    case view_company_detail
    case view_developers
    
    // Mypage
    case view_changeNickname
    case view_studentList
    case view_pointList
    case view_outingList
    case view_changePassword
    case view_logout
    
   // MARK: - Button
    
    // PMS
    case click_signIn
    case click_signUp
    case click_naver
    case click_kakaotalk
    case click_facebook
    case click_apple
    
    // Mypage
    case click_addStudent
    case click_changeNickname
    case click_changeStudent
    case click_deleteStudent
    case click_logout
    case click_changePassword
    
    // ERROR
    case error
    
    // SUCCESS
    case success
}

extension AnalyticsManager {
    public func log() {
        
        Analytics.logEvent(self.rawValue, parameters: nil)
    }
    
    public func log(name: String) {
        Analytics.logEvent(self.rawValue, parameters: ["name": name])
    }
    
    public func log(message: String) {
        Analytics.logEvent(self.rawValue, parameters: ["error": message])
    }
    
    public func log(label: String) {
        Analytics.logEvent(self.rawValue, parameters: ["success": label])
    }
    
    static func setUserID() {
        let curDevice = DCDevice.current
        if curDevice.isSupported
        {
            curDevice.generateToken(completionHandler: { (data, error) in
                if let tokenData = data
                {
                    Analytics.setUserID("\(tokenData)")
                }
                else
                {
                    Log.error(error?.localizedDescription as Any)
                }
            })
        }
    }
}
