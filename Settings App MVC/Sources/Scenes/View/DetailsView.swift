//
//  DetailView.swift
//  Settings App MVC
//
//  Created by Adlet Zhantassov on 22.03.2023.
//

import UIKit

class DetailsView: UIView {
    
    func configureView(with model: Setting) {
        name.text = model.name
        iconImage.image = model.iconImage
    }
    
    private var setting: Setting? = nil
    
    //MARK: - Data
    private lazy var iconImage: UIImageView = {
        let iconImage = UIImageView()
        return iconImage
    }()
    
    private lazy var name: UILabel = {
        let name = UILabel()
        name.font = .systemFont(ofSize: 15)
        name.textColor = .black
        return name
    }()

    //MARK: - Lifecycle
    init() {
        super.init(frame: .zero)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setupViews()
        setupConstraints()
    }
    
    //MARK: - SetupViews
    private func setupViews() {
        backgroundColor = .white
        addSubview(iconImage)
        addSubview(name)
    }
    
    //MARK: - SetupConstraints
    private func setupConstraints() {
        iconImage.snp.makeConstraints { iconImage in
            iconImage.centerX.equalTo(self)
            iconImage.centerY.equalTo(self)
            iconImage.height.width.equalTo(150)
        }
        name.snp.makeConstraints { name in
            name.centerX.equalToSuperview()
            name.centerY.equalTo(iconImage.snp.bottom).offset(20)
        }
    }
}
