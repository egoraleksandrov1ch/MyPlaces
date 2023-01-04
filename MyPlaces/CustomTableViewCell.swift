//
//  CustomTableViewCell.swift
//  MyPlaces
//
//  Created by egor aleksandrovich on 26.12.2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var imageOfPlace: UIImageView! {
        didSet {
            imageOfPlace.layer.cornerRadius = imageOfPlace.frame.size.height / 2
            imageOfPlace.clipsToBounds = true
        }
    }
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet var starsRating: [UIImageView]!
    @IBOutlet weak var typeLabel: UILabel!
    
    func nowRating(rating: Int) {
        for index in 0...4 {
            if index < rating {
                starsRating[index].image = UIImage(named: "filledStar")
            } else {
                starsRating[index].image = UIImage(named: "emptyStar")
            }
        }
    }
    
}
