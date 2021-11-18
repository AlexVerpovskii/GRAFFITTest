//
//  ViewTeamVC.swift
//  Graffit
//
//  Created by black on 17.11.2021.
//

import Foundation
import UIKit
import SnapKit
import TableKit

final class ViewTeamVC: UIViewController {
    private var tableDirector: TableDirector?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
        self.title = Constants.Tittle.view.rawValue
    }
    
    private func initialize() {
        self.title = Constants.Tittle.view.rawValue
        
        //MARK: Создание списка команд
        let tableView = UITableView()
        tableView.backgroundColor = UIColor(red: 34/255, green: 238/255, blue: 255/255, alpha: 1)
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(0)
            make.bottom.equalToSuperview().inset(0)
            make.left.equalToSuperview().inset(0)
            make.right.equalToSuperview().inset(0)
        }
        
        tableDirector = TableDirector(tableView: tableView)
        prepareTable()
    }
    
    private func prepareTable() {
        let rowTeamFirst = TableRow<TeamCell>(item: TeamCellModel(name: "Test first"), actions: [routing()])
        let rowTeamSecond = TableRow<TeamCell>(item: TeamCellModel(name: "Test second"), actions: [routing()])
        
        tableDirector?.append(rows: [rowTeamFirst, rowTeamSecond])
        
        tableDirector?.tableView?.separatorStyle = .none
        tableDirector?.reload()
    }
    
    private func routing() -> TableRowAction<TeamCell> {
        let documentsAction = TableRowAction<TeamCell>(.click) { _ in
//            self.navigationController?.pushViewController(vc, animated: true)
            print("push")
        }
        return documentsAction
    }
}
