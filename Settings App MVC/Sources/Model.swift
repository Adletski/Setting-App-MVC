//
//  Model.swift
//  Settings App MVC
//
//  Created by Adlet Zhantassov on 21.03.2023.
//

import UIKit

enum Accessory {
    case checkmark
    case swtch
}

struct Setting {
    let iconImage: UIImage?
    let name: String
    let status: Accessory
    let bgColor: UIColor
    var detailText: String = ""
}

extension Setting {
    static var settings: [[Setting]] = [
        [Setting(iconImage: UIImage(named: "aviamode"), name: "Авиарежим", status: .swtch, bgColor: .systemOrange),
         Setting(iconImage: UIImage(named: "wifi"), name: "Wi-Fi", status: .checkmark, bgColor: .systemCyan, detailText: "Не подключено"),
         Setting(iconImage: UIImage(named: "bluetooth"), name: "Bluetooth", status: .checkmark, bgColor: .systemCyan, detailText: "Вкл."),
         Setting(iconImage: UIImage(named: "cellular"), name: "Cотовая связь", status: .checkmark, bgColor: .systemGreen),
         Setting(iconImage: UIImage(named: "modemmode"), name: "Режим модема", status: .checkmark, bgColor: .systemGreen),
         Setting(iconImage: UIImage(named: "vpn"), name: "VPN", status: .swtch, bgColor: .systemCyan)
        ],
        [Setting(iconImage: UIImage(named: "notification"), name: "Уведомления", status: .checkmark, bgColor: .systemRed),
         Setting(iconImage: UIImage(named: "sound"), name: "Звуки, тактильные сигналы", status: .checkmark, bgColor: .systemRed),
         Setting(iconImage: UIImage(named: "focus"), name: "Фокусирование", status: .checkmark, bgColor: .systemPurple),
         Setting(iconImage: UIImage(named: "screentime"), name: "Экранное время", status: .checkmark, bgColor: .systemPurple)
        ],
        [Setting(iconImage: UIImage(named: "general"), name: "Основные", status: .checkmark, bgColor: .systemGray5),
         Setting(iconImage: UIImage(named: "controlpanel"), name: "Пункт управления", status: .checkmark, bgColor: .systemGray5),
         Setting(iconImage: UIImage(named: "screenbright"), name: "Экран и яркость", status: .checkmark, bgColor: .systemCyan),
         Setting(iconImage: UIImage(named: "background"), name: "Обои", status: .checkmark, bgColor: .systemCyan),
         Setting(iconImage: UIImage(named: "siri"), name: "Siri и поиск", status: .checkmark, bgColor: .black),
         Setting(iconImage: UIImage(named: "faceid"), name: "Face ID и код-пароль", status: .checkmark, bgColor: .systemGreen),
         Setting(iconImage: UIImage(named: "contactnotification"), name: "Уведомления о контакте", status: .checkmark, bgColor: .white),
         Setting(iconImage: UIImage(named: "battery"), name: "Аккумулятор", status: .checkmark, bgColor: .systemGreen),
         Setting(iconImage: UIImage(named: "privacy"), name: "Конфиденциальность и безопасность", status: .checkmark, bgColor: .systemCyan)],
    ]
}
