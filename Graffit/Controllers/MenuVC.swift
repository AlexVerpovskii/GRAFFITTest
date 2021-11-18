//
//  ViewController.swift
//  Graffit
//
//  Created by black on 16.11.2021.
//

import UIKit
import SnapKit

final class MenuVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }

    
    private func initialize() {
        let wallpaperImage = UIImageView()
        wallpaperImage.image = UIImage(named: Constants.Image.menuIamge.rawValue)
        view.addSubview(wallpaperImage)
        
        wallpaperImage.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(0)
            make.top.equalToSuperview().inset(0)
            make.right.equalToSuperview().inset(0)
            make.bottom.equalToSuperview().inset(0)
        }
        
        //MARK: Создание лейбла "Меню"
        let menuLabel = MenuLabel()
        wallpaperImage.addSubview(menuLabel)
        menuLabel.snp.makeConstraints { make in
            make.centerX.equalTo(self.view)
            make.top.equalTo(wallpaperImage).inset(170)
        }
        
        //MARK: Создание кнопки "Создание команды"
        let createButton = CreateButton()
        createButton.setTitle(Constants.Command.create.rawValue, for: .normal)
        view.addSubview(createButton)
        createButton.snp.makeConstraints { make in
            make.top.equalTo(menuLabel).inset(100)
            make.left.equalToSuperview().inset(40)
            make.right.equalToSuperview().inset(40)
            make.height.equalTo(40)
        }
        createButton.addTarget(self, action: #selector(routingtoCreateTeamVC), for: .touchUpInside)
        
        //MARK: Создание кнопки "Редактирование команды"
        let editButton = CreateButton()
        editButton.setTitle(Constants.Command.edit.rawValue, for: .normal)
        view.addSubview(editButton)
        editButton.snp.makeConstraints { make in
            make.top.equalTo(createButton).inset(80)
            make.left.equalToSuperview().inset(40)
            make.right.equalToSuperview().inset(40)
            make.height.equalTo(80)
        }
        editButton.addTarget(self, action: #selector(routingToEditTeamVC), for: .touchUpInside)

        
        //MARK: Создание кнопки "Просмотр команд"
        let viewButton = CreateButton()
        viewButton.setTitle(Constants.Command.view.rawValue, for: .normal)
        view.addSubview(viewButton)
        viewButton.snp.makeConstraints { make in
            make.top.equalTo(editButton).inset(120)
            make.left.equalToSuperview().inset(40)
            make.right.equalToSuperview().inset(40)
            make.height.equalTo(80)
        }
        viewButton.addTarget(self, action: #selector(routingToViewTeamVC), for: .touchUpInside)
    }
    
    @objc private func routingtoCreateTeamVC() {
        self.navigationController?.pushViewController(CreateTeamVC(), animated: true)
    }
    
    @objc private func routingToEditTeamVC() {
        self.navigationController?.pushViewController(EditTeamVC(), animated: true)
    }
    
    @objc private func routingToViewTeamVC() {
        self.navigationController?.pushViewController(ViewTeamVC(), animated: true)
    }
}
