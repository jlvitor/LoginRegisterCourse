//
//  UserDetailTableViewCell.swift
//  LoginRegisterScreen-Course
//
//  Created by Jean Lucas Vitor on 07/04/22.
//

import UIKit

class UserDetailTableViewCell: UITableViewCell {
    
    //Identifier tem que ter o mesmo nome da classe
    static let identifier: String = "UserDetailTableViewCell"
    
    lazy var userImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        return label
    }()
    
    //MARK: Constructor
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.configSubView()
        self.setUpConstraints()
    }
    
    //MARK: Config
    private func configSubView() {
        self.contentView.addSubview(self.userImageView)
        self.contentView.addSubview(self.nameLabel)
    }
    
    public func setUpCell(data: DataUser) {
        self.nameLabel.text = data.name
        self.userImageView.image = UIImage(named: data.nameImage)
    }
    
    //MARK: Constraints
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            self.userImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.userImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.userImageView.heightAnchor.constraint(equalToConstant: 80),
            self.userImageView.widthAnchor.constraint(equalToConstant: 80),
            
            self.nameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.nameLabel.leadingAnchor.constraint(equalTo: self.userImageView.trailingAnchor, constant: 20)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
