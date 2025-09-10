//
//  QuizViewController.swift
//  PersonajeQuiz
//
//  Created by Francisco Jean on 10/09/25.
//

import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet var optionButtons: [UIButton]!
    
    @IBAction func optionTapped(_ sender: UIButton) {
        print("Opción seleccionada: \(sender.title(for: .normal) ?? "Sin título")")
        
        currentQuestionIndex += 1
        
        if currentQuestionIndex < questions.count {
            showQuestion()
        } else {
            print("Quiz terminado: aquí vamos a mostrar el resultado")
            // Aquí luego haremos el segue a ResultViewController
        }
    }
    
    struct Question {
        let text: String
        let options: [String]
        let characterMapping: [Int]
    }

    let characters = ["Bart", "Pocahontas", "Mario"]

    var questions: [Question] = []
    var currentQuestionIndex = 0
    var scores = [0, 0, 0]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        questions = [
            Question(
                text: "¿Dónde preferirías vivir?",
                options: ["Springfield", "En la naturaleza", "En el Reino Champiñón"],
                characterMapping: [0, 1, 2]
            ),
            Question(
                text: "¿Qué prefieres desayunar?",
                options: ["Donas", "Frutas del bosque", "Hongos mágicos"],
                characterMapping: [0, 1, 2]
            ),
            Question(
                text: "¿Cuál es tu pasatiempo ideal?",
                options: ["Hacer travesuras", "Explorar la naturaleza", "Jugar videojuegos"],
                characterMapping: [0, 1, 2]
            ),
            Question(
                text: "¿Qué cualidad te describe mejor?",
                options: ["Rebelde", "Espiritual", "Valiente"],
                characterMapping: [0, 1, 2]
            ),
            Question(
                text: "¿Con qué frase te identificas más?",
                options: ["¡Ay caramba!", "Colores en el viento", "It's-a me, Mario!"],
                characterMapping: [0, 1, 2]
            )
        ]
        
        showQuestion()
    }
    
    func showQuestion() {
        let currentQuestion = questions[currentQuestionIndex]
        
        // Mostrar progreso
        progressLabel.text = "Pregunta \(currentQuestionIndex + 1)/\(questions.count)"
        
        // Mostrar texto de la pregunta
        questionLabel.text = currentQuestion.text
        
        // Mostrar opciones en los botones
        for (index, button) in optionButtons.enumerated() {
            if index < currentQuestion.options.count {
                button.setTitle(currentQuestion.options[index], for: .normal)
                button.isHidden = false
            } else {
                button.isHidden = true
            }
        }
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
