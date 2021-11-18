//
//  EditTeamVC.swift
//  Graffit
//
//  Created by black on 17.11.2021.
//

import UIKit

final class EditTeamVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    private func initialize() {
        view.backgroundColor = .green
        self.title = Constants.Tittle.edit.rawValue
    }
}
