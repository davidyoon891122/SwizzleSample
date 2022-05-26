//
//  ViewController.swift
//  MethodSwizzling
//
//  Created by iMac on 2022/05/26.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    private lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Button", for: .normal)
        button.backgroundColor = .green
        button.layer.cornerRadius = 37.5
        button.addTarget(
            self,
            action: #selector(didTapButton),
            for: .touchUpInside)
        button.setTitleColor(.label, for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController viewWillAppaer")
    }

}

private extension ViewController {
    func setupViews() {
        view.backgroundColor = .systemBackground
        [
            button
        ]
            .forEach {
                view.addSubview($0)
            }

        button.snp.makeConstraints {
            $0.width.height.equalTo(75.0)
            $0.centerY.centerX.equalToSuperview()
        }
    }

    @objc func didTapButton() {
        let secondViewContoller = SecondViewController()
        navigationController?.pushViewController(secondViewContoller, animated: true)
    }
}
