//
//  DetailViewController.swift
//  Settings App MVC
//
//  Created by Adlet Zhantassov on 21.03.2023.
//

import UIKit

class DetailsController: UIViewController {
    
    private var detailsView: DetailsView? {
        guard isViewLoaded else { return nil }
        return view as? DetailsView
    }
    
    var setting: Setting?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Details"
        view = DetailsView()
        configureView()
    }
}
private extension DetailsController {
    func configureView() {
        print(setting?.name)
        print("adlet")
        guard let setting = setting else { return }
        print("adlet 2")
        print(setting.name)
        detailsView?.configureView(with: setting)
    }
}
