//
//  ViewController.swift
//  Alita
//
//  Created by Chang Sophia on 2/19/19.
//  Copyright © 2019 Chang Sophia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var scratchCardView: SKScratchCardView?

    @IBOutlet weak var alitaImageView: UIImageView!
    @IBOutlet weak var bloodImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        setupView()

        // Do any additional setup after loading the view, typically from a nib.
        
    }
    private func setupView() {
        let imageView = UIImageView(image: UIImage(named: "alita-battle-angel-4k-5v-1280x2120"))
        imageView.contentMode = .scaleAspectFill
        let coverView = UIImageView(image: UIImage(named: "alita"))
        coverView.contentMode = .scaleAspectFill
        let screen = UIScreen.main.bounds
        scratchCardView = SKScratchCardView(frame:screen)
        scratchCardView!.setupWith(coverView: coverView, contentView: imageView)
        view.addSubview(scratchCardView!)
    }
    

    //clear paths
    @objc private func clearButtonClickHandler() {
         print("clear")
        scratchCardView?.clearCanvas()
    }
    
    
}

