//
//  ResultViewController.swift
//  PersonajeQuiz
//
//  Created by Francisco Jean on 10/09/25.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBAction func retryTapped(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    var winner: String?
    var winnerDescription: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "Resultado"
        navigationItem.hidesBackButton = true
        winnerLabel.text = "Tu personaje es: \(winner ?? "Nadie")"
        descriptionLabel.text = winnerDescription ?? ""
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
