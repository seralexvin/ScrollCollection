//
//  MenuModel.swift
//  SushiFood
//
//  Created by Servin Asanov on 14.02.2022.
//

import Foundation
import UIKit


enum MenuModel: Int, CustomStringConvertible {
    case Profile
    case Menu
    case Contacts
    case Settings
    
    var description: String {
        switch self {
        case .Profile: return "Profile"
        case .Menu: return "Menu"
        case .Contacts: return "Contacts"
        case .Settings: return "Settings"
        }
    }
    
    var image: UIImage {
        switch self {
        case .Profile: return UIImage(named: "Profile") ?? UIImage()
        case .Menu: return UIImage(named: "Menu") ?? UIImage()
        case .Contacts: return UIImage(named: "Contacts") ?? UIImage()
        case .Settings: return UIImage(named: "Settings") ?? UIImage()
        }
    }

}
