//
//  DetailViewController.swift
//  iOSDesign
//
//  Created by Patrick Bellot on 8/31/17.
//  Copyright © 2017 Polestar Interactive LLC. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    navigationItem.largeTitleDisplayMode = .never
  }
  
  
  @IBOutlet weak var detailDescriptionLabel: UILabel!


  func configureView() {
    // Update the user interface for the detail item.
    if let detail = detailItem {
        if let label = detailDescriptionLabel {
            label.text = detail.description
        }
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    
    detailDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
    detailDescriptionLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
    detailDescriptionLabel.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor).isActive = true
    configureView()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  var detailItem: NSDate? {
    didSet {
        // Update the view.
        configureView()
    }
  }


}

