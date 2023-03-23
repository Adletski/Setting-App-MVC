//
//  SettingView.swift
//  Settings App MVC
//
//  Created by Adlet Zhantassov on 21.03.2023.
//

import UIKit

protocol SettingsViewDelegate: class {
    func selectedCell(setting: Setting)
}

class SettingsView: UIView {
    
    private var models: [[Setting]] = []
    
    func configureView(with models: [[Setting]]) {
        self.models = models
    }
    
    weak var delegate: SettingsViewDelegate?
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(SettingTableViewCell.self, forCellReuseIdentifier: SettingTableViewCell.identifier)
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func commonInit() {
        backgroundColor = .white
        setupViews()
        setupConstraints()
    }
    
    private func setupViews() {
        addSubview(tableView)
    }
    
    private func setupConstraints() {
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}

extension SettingsView: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SettingTableViewCell.identifier, for: indexPath) as? SettingTableViewCell
        let cellType = models[indexPath.section][indexPath.row].status
        let customSwitch = UISwitch(frame: CGRectZero) as UISwitch
        customSwitch.isOn = false
        switch cellType {
            case .checkmark:
                cell?.accessoryType = .disclosureIndicator
            case .swtch:
                cell?.accessoryView = customSwitch
        }
        cell?.setting = models[indexPath.section][indexPath.row]
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let selectedSetting = models[indexPath.section][indexPath.row]
        delegate?.selectedCell(setting: selectedSetting)
    }
}
