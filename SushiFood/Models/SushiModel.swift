//
//  SushiModel.swift
//  SushiFood
//
//  Created by Servin Asanov on 14.02.2022.
//

import Foundation
import UIKit

struct SushiModel {
    var mainImage: UIImage?
    var sushiName: String
    var smallDescription: String
    var cost: Int
    
    static func fetchSushi() -> [SushiModel] {
        let first = SushiModel(mainImage: UIImage(named: "sushi1"), sushiName: "Jengibre", smallDescription: "Original Japanese", cost: 8)
        let second = SushiModel(mainImage: UIImage(named: "sushi2"), sushiName: "Caviar", smallDescription: "Original Japanese", cost: 10)
        let third = SushiModel(mainImage: UIImage(named: "sushi3"), sushiName: "Camaron", smallDescription: "Original Japanese", cost: 7)
        let four = SushiModel(mainImage: UIImage(named: "sushi4"), sushiName: "Salmon", smallDescription: "Original Japanese", cost: 12)
        let five = SushiModel(mainImage: UIImage(named: "sushi1"), sushiName: "Jengibre", smallDescription: "Original Japanese", cost: 8)
        let six = SushiModel(mainImage: UIImage(named: "sushi2"), sushiName: "Caviar", smallDescription: "Original Japanese", cost: 10)
        let seven = SushiModel(mainImage: UIImage(named: "sushi3"), sushiName: "Camaron", smallDescription: "Original Japanese", cost: 7)
        let eight = SushiModel(mainImage: UIImage(named: "sushi4"), sushiName: "Salmon", smallDescription: "Original Japanese", cost: 12)
        
        return [first, second, third, four, five, six, seven, eight]
    }
}

struct Constance {
    static let leftDistanceToView: CGFloat = 40
    static let rightDistanceToView: CGFloat = 40
    static let galleryMinimumLineSpacing: CGFloat = 10
    static let galleryItemWidth = (UIScreen.main.bounds.width - Constance.leftDistanceToView - Constance.rightDistanceToView - Constance.galleryMinimumLineSpacing / 2) / 2
}
