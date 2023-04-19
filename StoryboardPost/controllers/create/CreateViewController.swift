//
//  CreateViewController.swift
//  StoryboardPost
//
//  Created by Bekhruz Hakmirzaev on 15/04/23.
//

import UIKit

class CreateViewController: BaseViewController, CreateView {
    
    
    @IBOutlet weak var titleLabel: UITextField!
    @IBOutlet weak var bodyLabel: UITextField!
    
    var presenter: CreatePresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initView()
    }
    
    func initView() {
        title = "Create Post"
        
        presenter = CreatePresenter()
        presenter.createView = self
        presenter.controller = self
    }
    
    func onCreatePost(created: Bool) {
        if created {
            self.navigationController?.popViewController(animated: true)
        } else {
            // Error
            print("Error")
        }
    }
    
    @IBAction func createButton(_ sender: Any) {
        if titleLabel.text != nil && bodyLabel.text != nil {
            self.presenter.apiPostCreate(post: Post(title: titleLabel.text!, body: bodyLabel.text!))
        }
    }
    
}
