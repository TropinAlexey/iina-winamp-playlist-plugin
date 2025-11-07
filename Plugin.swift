import Foundation
import IINA_Plugin_Framework

class Plugin: NSObject, IINAPlugin {

    // MARK: - Обязательные свойства

    var id: String = "com.tropinalexey.winamp-playlist"
    var name: String = "Winamp Playlist Manager"
    var version: String = "0.1.0"
    var description: String = "A plugin to replicate Winamp's playlist management."

    // MARK: - Init

    // plugin init
    required override init() {
        super.init()
        
        print("\(name) Plugin Initialized")
    }

    // MARK: - Functions

    // Этот метод позволяет добавить пункты в меню IINA
    // Это наш основной способ взаимодействия с пользователем
    func addMenuItems() -> [IINAMenuItem]? {
        // Создаем действие, которое будет выполняться при нажатии
        let action = #selector(openPlaylistWindow)
        // Создаем пункт меню
        let menuItem = IINAMenuItem(title: "Open Winamp Playlist", target: self, action: action)
        // Возвращаем массив с нашими пунктами меню
        return [menuItem]
    }

    // Наша функция, которая вызывается из меню
    @objc func openPlaylistWindow() {
        // Здесь будет логика открытия окна плейлиста
        // Пока что просто выведем сообщение в консоль IINA
        print("Winamp Playlist window should open now!")
        // Вы можете показать простое уведомление
        IINA.plugin(self, showsNotification: "Winamp Playlist feature is under development!")
    }
}
