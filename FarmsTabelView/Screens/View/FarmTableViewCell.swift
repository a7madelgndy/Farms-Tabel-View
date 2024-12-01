//
//  FarmTableViewCell.swift
//  FarmsTabelView
//
//  Created by Ahmed El Gndy on 01/12/2024.
//

import UIKit

class FarmTableViewCell: UITableViewCell {

    @IBOutlet var deliverylbL: UILabel!
    @IBOutlet var farmNameLbl: UILabel!
    @IBOutlet var farmImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
   
    
    func configure(with farm: Farm){
        farmImg.layer.cornerRadius = 15
        farmImg.image = UIImage(named: farm.image)
        farmNameLbl.text = farm.name
        deliverylbL.text = farm.Delivery
    }
    
}
