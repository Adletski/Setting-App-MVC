//
//  SettingTableViewCell.swift
//  Settings App MVC
//
//  Created by Adlet Zhantassov on 21.03.2023.
//

import UIKit
import SnapKit

class SettingTableViewCell: UITableViewCell {
    
    static let identifier = "SettingTableViewCell"

    //MARK: - Data
    var setting: Setting? {
        didSet {
            iconView.image = setting?.iconImage
            name.text = setting?.name
            status = setting?.status
            detailText.text = setting?.detailText
        }
    }
    
    private lazy var iconView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    private lazy var name: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15)
        return label
    }()
    
    private lazy var detailText: UILabel = {
        let detailText = UILabel()
        detailText.font = .systemFont(ofSize: 15)
        detailText.textColor = .systemGray
        return detailText
    }()
    
    private lazy var status: Accessory? = .checkmark
    
    //MARK: - Lifecycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - SetupViews
    private func setupViews() {
        contentView.addSubview(name)
        contentView.addSubview(iconView)
        contentView.addSubview(detailText)
    }
    
    //MARK: - SetupConstraints
    private func setupConstraints() {
        iconView.snp.makeConstraints { iconView in
            iconView.centerY.equalTo(contentView)
            iconView.left.equalTo(contentView).offset(20)
            iconView.width.height.equalTo(70)
        }
        name.snp.makeConstraints { name in
            name.centerY.equalTo(contentView)
            name.left.equalTo(iconView.snp.right)
        }
        detailText.snp.makeConstraints { detailText in
            detailText.centerY.equalTo(contentView)
            detailText.right.equalTo(contentView).offset(-20)
        }
    }

}
