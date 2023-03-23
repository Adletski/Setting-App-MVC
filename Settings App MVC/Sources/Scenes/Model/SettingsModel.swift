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
    var detailText: String = ""
}

final class SettingsModel {
    
    func createModels() -> [[Setting]] {
        return [
            [Setting(iconImage: UIImage(named: "aviamode"), name: "Авиарежим", status: .swtch),
             Setting(iconImage: UIImage(named: "wifi"), name: "Wi-Fi", status: .checkmark, detailText: "Не подключено"),
             Setting(iconImage: UIImage(named: "bluetooth"), name: "Bluetooth", status: .checkmark, detailText: "Вкл."),
             Setting(iconImage: UIImage(named: "cellular"), name: "Cотовая связь", status: .checkmark),
             Setting(iconImage: UIImage(named: "modemmode"), name: "Режим модема", status: .checkmark),
             Setting(iconImage: UIImage(named: "vpn"), name: "VPN", status: .swtch)
            ],
            [Setting(iconImage: UIImage(named: "notification"), name: "Уведомления", status: .checkmark),
             Setting(iconImage: UIImage(named: "sound"), name: "Звуки, тактильные сигналы", status: .checkmark),
             Setting(iconImage: UIImage(named: "focus"), name: "Фокусирование", status: .checkmark),
             Setting(iconImage: UIImage(named: "screentime"), name: "Экранное время", status: .checkmark)
            ],
            [Setting(iconImage: UIImage(named: "general"), name: "Основные", status: .checkmark),
             Setting(iconImage: UIImage(named: "controlpanel"), name: "Пункт управления", status: .checkmark),
             Setting(iconImage: UIImage(named: "screenbright"), name: "Экран и яркость", status: .checkmark),
             Setting(iconImage: UIImage(named: "background"), name: "Обои", status: .checkmark),
             Setting(iconImage: UIImage(named: "siri"), name: "Siri и поиск", status: .checkmark),
             Setting(iconImage: UIImage(named: "faceid"), name: "Face ID и код-пароль", status: .checkmark),
             Setting(iconImage: UIImage(named: "contactnotification"), name: "Уведомления о контакте", status: .checkmark),
             Setting(iconImage: UIImage(named: "battery"), name: "Аккумулятор", status: .checkmark),
             Setting(iconImage: UIImage(named: "privacy"), name: "Конфиденциальность и безопасность", status: .checkmark)],
        ]
    }
}
