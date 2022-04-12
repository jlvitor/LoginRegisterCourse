//
//  SportCollectionViewCell.swift
//  LoginRegisterScreen-Course
//
//  Created by Jean Lucas Vitor on 11/04/22.
//

import UIKit

class SportCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = "SportCollectionViewCell"
    
    let sportCollectionViewCellScreen: SportCollectionViewCellScreen = SportCollectionViewCellScreen()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubView()
        self.configSportCollectionViewCellScreenConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubView() {
        self.sportCollectionViewCellScreen.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(self.sportCollectionViewCellScreen)
    }
    
    public func configCell(data: Sport) {
        self.sportCollectionViewCellScreen.imageView.image = UIImage(named: data.nameImage)
        self.sportCollectionViewCellScreen.sportName.text = data.name
    }
    
    private func configSportCollectionViewCellScreenConstraints() {
        self.sportCollectionViewCellScreen.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
