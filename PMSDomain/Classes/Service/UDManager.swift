//
//  UDManager.swift
//  PMS-iOS-V2
//
//  Created by GoEun Jeong on 2021/05/30.
//

import Foundation

public class UDManager {
    static let shared = UDManager()
    
    let UD = UserDefaults.standard
    
    public var student: String? {
        get {
            return UD.string(forKey: "student")
        } set(value) {
            UD.set(value, forKey: "student")
            var number: Int?
            
            if value != nil {
                number = Int(value!.components(separatedBy: " ").first!)
            } else {
                number = nil
            }
           
            UD.set(number, forKey: "studentNumber")
        }
    }
    
    public var studentNumber: Int? {
        get {
            return UD.integer(forKey: "studentNumber")
        }
    }
}
