//
//  RepoTableViewCell.swift
//  GithubDemo
//
//  Created by Ngo Thanh Tai on 11/18/15.
//  Copyright © 2015 codepath. All rights reserved.
//

import UIKit

class RepoTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var forkLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUI(repo:GithubRepo) {
        self.nameLabel.text = repo.name!
        self.ownerLabel.text = repo.ownerHandle!
        self.imgView.setImageWithURL(NSURL(string: repo.ownerAvatarURL!)!)
        self.descriptionLabel.text = repo.description1!
        self.starLabel.text = String(repo.stars!)
        self.forkLabel.text = String(repo.forks!)
    }

}
