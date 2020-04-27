//
//  CardSelectionViewController.swift
//  CardWorkout
//
//  Created by Juan Francisco Dorado Torres on 27/04/20.
//  Copyright © 2020 Juan Francisco Dorado Torres. All rights reserved.
//

import UIKit

class CardSelectionViewController: UIViewController {

  // MARK: - Outlets

  @IBOutlet var cardImageView: UIImageView!
  @IBOutlet var buttons: [UIButton]!

  // MARK: - View Lifecycle

  override func viewDidLoad() {
    super.viewDidLoad()

    buttons.forEach { $0.layer.cornerRadius = 8 }
  }

  // MARK: - Actions

  @IBAction func stopButtonDidTap(_ sender: UIButton) {

  }
}
