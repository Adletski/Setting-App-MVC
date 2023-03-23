//
//  ViewController.swift
//  Settings App MVC
//
//  Created by Adlet Zhantassov on 21.03.2023.
//

import UIKit

class SettingsController: UIViewController {
    
    private var settingsView: SettingsView? {
        guard isViewLoaded else { return nil }
        return view as? SettingsView
    }
    
    var settings: SettingsModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Settings"
        let settingsView = SettingsView()
        settingsView.delegate = self
        settings = SettingsModel()
        view = settingsView
        configureView()
    }
}

extension SettingsController: SettingsViewDelegate {
    func configureView() {
        guard let settings = settings?.createModels() else { return }
        settingsView?.configureView(with: settings)
    }
    
    func selectedCell(setting: Setting) {
        let detailVC = DetailsController()
        print(setting.name)
        detailVC.setting = setting
        navigationController?.pushViewController(detailVC, animated: true)
    }
}

