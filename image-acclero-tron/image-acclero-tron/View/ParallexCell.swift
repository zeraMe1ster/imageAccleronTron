//
//  ParallexCell.swift
//  image-acclero-tron
//
//  Created by Sau on 8/25/19.
//  Copyright © 2019 Sau. All rights reserved.
//

import UIKit

class ParallexCell: UITableViewCell {

    
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupParallex()
    }
    
    func configureCell(withImage image:UIImage, andDescription desc:String) {
        itemImageView.image = image
        descriptionLbl.text = desc
         
        
    }
    
    func setupParallex(){
        let min = CGFloat (-50)
        let max = CGFloat (50)
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        
        let motionEffectGroup = UIMotionEffectGroup()
        
        motionEffectGroup.motionEffects = [xMotion, yMotion]
        
        itemImageView.addMotionEffect(motionEffectGroup)
        
        
    }

   

}
