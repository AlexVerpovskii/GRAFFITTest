//
//  CreateTeamVC.swift
//  Graffit
//
//  Created by black on 16.11.2021.
//

import Foundation
import UIKit
import TableKit

final class CreateTeamVC: UIViewController {
    
    var teamArray: [CharModel] = []
    private var tableDirector: TableDirector?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    private func initialize() {
        self.title = Constants.Tittle.create.rawValue
        
        //MARK: Создание фона
        let teamImage = UIImageView()
        teamImage.image = UIImage(named: Constants.Image.teamImage.rawValue)
        view.addSubview(teamImage)
        teamImage.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(0)
            make.top.equalToSuperview().inset(0)
            make.right.equalToSuperview().inset(0)
            make.bottom.equalToSuperview().inset(0)
        }
        
        //MARK: Создание текстового поля для ввода названия
        let nameTeamTF = UITextField()
        nameTeamTF.placeholder = "Введите название команды"
        view.addSubview(nameTeamTF)
        nameTeamTF.backgroundColor = .white
        nameTeamTF.layer.cornerRadius = 18
        nameTeamTF.textAlignment = .center
        nameTeamTF.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(100)
            make.left.equalToSuperview().inset(40)
            make.right.equalToSuperview().inset(40)
            make.height.equalTo(40)
        }
        
        //MARK: Создание списка персонажей
        let listChars = UITableView()
        view.addSubview(listChars)
        listChars.backgroundColor = .clear
        listChars.snp.makeConstraints { make in
            make.top.equalTo(nameTeamTF).inset(60)
            make.bottom.equalToSuperview().inset(180)
            make.left.equalToSuperview().inset(0)
            make.right.equalToSuperview().inset(0)
        }
        
        //MARK: Создание кнопки "Создание персонажа"
        let createButton = CreateButton()
        createButton.setTitle(Constants.Command.addChar.rawValue, for: .normal)
        view.addSubview(createButton)
        createButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().inset(120)
            make.left.equalToSuperview().inset(20)
            make.right.equalToSuperview().inset(20)
            make.height.equalTo(40)
        }
        createButton.addTarget(self, action: #selector(addChar), for: .touchUpInside)
        
        //MARK: Создание кнопки "Сохранение команды"
        let saveButton = CreateButton()
        saveButton.setTitle(Constants.Command.saveTeam.rawValue, for: .normal)
        view.addSubview(saveButton)
        saveButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().inset(60)
            make.left.equalToSuperview().inset(20)
            make.right.equalToSuperview().inset(20)
            make.height.equalTo(40)
        }
        
        tableDirector = TableDirector(tableView: listChars)
        tableDirector?.tableView?.separatorStyle = .none
    }
    
    @objc private func addChar() {
        
        let alert = UIAlertController(title: "Создание", message: "Создайте персонажа для команды", preferredStyle: .alert)
        alert.addTextField { text in
            text.placeholder = "Имя персонажа"
        }
        alert.addTextField { text in
            text.placeholder = "Фраза"
        }
        alert.addTextField { text in
            text.placeholder = "Оружие"
        }
        let save = UIAlertAction(title: "Сохранить", style: .default) {[weak self] action in
            self?.teamArray.append(CharModel(name: alert.textFields![0].text!,
                                       phrase: alert.textFields![1].text!,
                                       weapon: alert.textFields![2].text!))
            self?.tableDirector?.append(rows: [TableRow<CharCell>(item: CharCellModel(name: alert.textFields![0].text!, phrase: alert.textFields![1].text!, weapon: alert.textFields![2].text!), actions: nil)])

            self?.tableDirector?.reload()
        }
        
        
        let cancel = UIAlertAction(title: "Отмена", style: .cancel, handler: nil)
        alert.addAction(save)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
}
