//
//  SettingsModel.swift
//  iOSSettingsScreen
//
//  Created by Дима Кондратенко on 20.11.2025.
//

import UIKit

struct SettingsModel: Hashable {
    var backgroundColor: UIColor
    var iconName: String
    var title: String
    var detailText: String?
    var hasDisclosure: Bool
    var hasSwitch: Bool
    var firstCell: Bool
    var customIcon: Bool
    
    var icon: UIImage {
        if customIcon {
            return UIImage(named: iconName) ?? UIImage()
        } else {
            return UIImage(systemName: iconName) ?? UIImage()
        }
    }
}

extension SettingsModel {
    static let settingsModel = [
        
        [SettingsModel(backgroundColor: .systemGray, iconName: "avatar", title: "Dmitry Kondratenko", hasDisclosure: true, hasSwitch: false, firstCell: true, customIcon: true)],
        
        [SettingsModel(backgroundColor: .systemOrange, iconName: "airplane", title: "Авиарежим", hasDisclosure: false, hasSwitch: true, firstCell: false, customIcon: false),
         SettingsModel(backgroundColor: .systemBlue, iconName: "wifi", title: "Wi-Fi", detailText: "TQ-Link_8F4C", hasDisclosure: true, hasSwitch: false, firstCell: false, customIcon: false),
         SettingsModel(backgroundColor: .systemBlue, iconName: "bluetooth", title: "Bluetooth", detailText: "Подключено", hasDisclosure: true, hasSwitch: false, firstCell: false, customIcon: true),
         SettingsModel(backgroundColor: .systemGreen, iconName: "antenna.radiowaves.left.and.right", title: "Сотовая связь", detailText: "Выкл.", hasDisclosure: true, hasSwitch: false, firstCell: false, customIcon: false),
         SettingsModel(backgroundColor: .systemGreen, iconName: "personalhotspot", title: "Режим модема", detailText: "Выкл.", hasDisclosure: true, hasSwitch: false, firstCell: false, customIcon: false),
         SettingsModel(backgroundColor: .systemGreen, iconName: "battery.100percent", title: "Аккумулятор", hasDisclosure: true, hasSwitch: false, firstCell: false, customIcon: false),
         SettingsModel(backgroundColor: .systemBlue, iconName: "network.badge.shield.half.filled", title: "VPN", detailText: "Подключено", hasDisclosure: true, hasSwitch: false, firstCell: false, customIcon: false)],
        
        [SettingsModel(backgroundColor: .systemGray, iconName: "gear", title: "Основные", hasDisclosure: true, hasSwitch: false, firstCell: false, customIcon: false),
         SettingsModel(backgroundColor: .systemBlue, iconName: "accessibility", title: "Универсальный доступ", hasDisclosure: true, hasSwitch: false, firstCell: false, customIcon: false),
         SettingsModel(backgroundColor: .systemGray, iconName: "camera", title: "Камера", hasDisclosure: true, hasSwitch: false, firstCell: false, customIcon: false),
         SettingsModel(backgroundColor: .systemTeal, iconName: "photo.on.rectangle", title: "Обои", hasDisclosure: true, hasSwitch: false, firstCell: false, customIcon: false),
         SettingsModel(backgroundColor: .systemGray, iconName: "magnifyingglass", title: "Поиск", hasDisclosure: true, hasSwitch: false, firstCell: false, customIcon: false),
         SettingsModel(backgroundColor: .systemBlue, iconName: "apps.iphone", title: "Экран <Домой> и библиотека приложений", hasDisclosure: true, hasSwitch: false, firstCell: false, customIcon: false),
         SettingsModel(backgroundColor: .systemBlue, iconName: "sun.max", title: "Экран и яркость", hasDisclosure: true, hasSwitch: false, firstCell: false, customIcon: false),
         SettingsModel(backgroundColor: .systemGreen, iconName: "siri", title: "Siri", hasDisclosure: true, hasSwitch: false, firstCell: false, customIcon: true)],
        
        [SettingsModel(backgroundColor: .systemRed, iconName: "bell.badge", title: "Уведомления", hasDisclosure: true, hasSwitch: false, firstCell: false, customIcon: false),
         SettingsModel(backgroundColor: .systemBlue, iconName: "speaker.wave.3", title: "Звуки и вибрация", hasDisclosure: true, hasSwitch: false, firstCell: false, customIcon: false),
         SettingsModel(backgroundColor: .systemPurple, iconName:  "moon.fill", title: "Фокусирование", hasDisclosure: true, hasSwitch: false, firstCell: false, customIcon: false),
         SettingsModel(backgroundColor: .systemPurple, iconName: "hourglass", title: "Экранное время", hasDisclosure: true, hasSwitch: false, firstCell: false, customIcon: false)],
        
        [SettingsModel(backgroundColor: .systemGreen, iconName: "faceid", title: "Face ID и код-пароль", hasDisclosure: true, hasSwitch: false, firstCell: false, customIcon: false),
         SettingsModel(backgroundColor: .systemRed, iconName: "sos", title: "Экстренный вызов - SOS", hasDisclosure: true, hasSwitch: false, firstCell: false, customIcon: false),
         SettingsModel(backgroundColor: .systemBlue, iconName: "hand.raised", title: "Конфиденциальность и безопасность", hasDisclosure: true, hasSwitch: false, firstCell: false, customIcon: false)],
        
        [SettingsModel(backgroundColor: .systemBlue, iconName: "gamecontroller", title: "Game Center", hasDisclosure: true, hasSwitch: false, firstCell: false, customIcon: false),
         SettingsModel(backgroundColor: .systemBlue, iconName: "cloud", title: "iCloud", hasDisclosure: true, hasSwitch: false, firstCell: false, customIcon: false),
         SettingsModel(backgroundColor: .black, iconName:  "creditcard.fill", title: "Wallet и Apple Pay", hasDisclosure: true, hasSwitch: false, firstCell: false, customIcon: false)]
    ]
}
