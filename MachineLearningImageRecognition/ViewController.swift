//
//  ViewController.swift
//  MachineLearningImageRecognition
//
//  Created by Mark Santoro on 8/22/24.
//

import UIKit
import CoreML
import Vision


class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet var imageView: UIImageView!
    
    
    @IBOutlet var resultLabel: UILabel!
    
    var chosenImage = CIImage()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func changeClicked(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        present(picker, animated: true, completion: nil)
            
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageView.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true, completion: nil)
        
        if let ciImage = CIImage(image: imageView.image!){
            chosenImage = ciImage
        }
        
        recognizeImage(image: chosenImage)
        
    }
    
    func recognizeImage(image: CIImage) {
        
        
        
    }
    
    
}

