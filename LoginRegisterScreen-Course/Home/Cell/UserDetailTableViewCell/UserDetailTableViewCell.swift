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
    
    lazy var userDetailView: UserDetailTableViewCellScreen = {
        let view = UserDetailTableViewCellScreen()
        return view
    }()
    
    //MARK: Constructor
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.configSubView()
        self.configDescriptionCellConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Config
    private func configSubView() {
        self.contentView.addSubview(self.userDetailView)
    }
    
    public func setUpCell(data: DataUser) {
        self.userDetailView.nameLabel.text = data.name
        self.userDetailView.userImageView.image = UIImage(named: data.nameImage)
    }
    
    //MARK: Constraint
    private func configDescriptionCellConstraints() {
        self.userDetailView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }

}
