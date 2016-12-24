//
//  CardCell.swift
//  Pods
//
//  Created by MILLMAN on 2016/9/20.
//
//

import UIKit

public protocol CardCellProtocol {
    static func cellIdentifier() -> String
}

open class CardCell:UICollectionViewCell{
    var collectionV:UICollectionView!
    var reloadBlock:(()->Void)?
    var customCardLayout:CardLayoutAttributes?
    var originTouchY:CGFloat = 0.0
    
    open override func awakeFromNib() {
        
        super.awakeFromNib()
        self.layer.speed = 0.8
        
        //Removed top shadow
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.25
        self.layer.shadowRadius = 5
        self.layer.shadowOffset = CGSize(width: 0, height: 5)
    }
    
    open override func apply(_ layoutAttributes: UICollectionViewLayoutAttributes) {
        super.apply(layoutAttributes)
        layer.zPosition = CGFloat(layoutAttributes.zIndex)
        if let layout = layoutAttributes as? CardLayoutAttributes {
            customCardLayout = layout
        }
        
    }
}
