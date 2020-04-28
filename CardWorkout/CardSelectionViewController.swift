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

  // MARK: - Properties

  private var cards = Deck.allValues
  private var timer: Timer!

  // MARK: - View Lifecycle

  override func viewDidLoad() {
    super.viewDidLoad()
    buttons.forEach { $0.layer.cornerRadius = 8 }
    startTimer()
  }

  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    timer.invalidate()
  }

  // MARK: - Actions

  @IBAction func stopButtonDidTap(_ sender: UIButton) {
    timer.invalidate()
  }

  @IBAction func restartButtonDidTap(_ sender: UIButton) {
    timer.invalidate()
    startTimer()
  }

  // MARK: - Methods

  private func startTimer() {
    timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
  }

  @objc private func showRandomImage() {
    cardImageView.image = cards.randomElement() ?? UIImage(named: "AS")
  }
}
