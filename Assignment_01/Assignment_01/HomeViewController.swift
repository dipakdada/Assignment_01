
import UIKit

class HomeViewController: UIViewController {
    
    //  TextField for input text
    @IBOutlet weak var inputTxt: UITextField!
    
    //  Text color Buttons
    @IBAction func redColorBtn(_ sender: Any) {
        self.inputTxt.textColor = .red
    }
    @IBAction func blueColorBtn(_ sender: Any) {
        self.inputTxt.textColor = .blue
    }
    @IBAction func pinkColorBtn(_ sender: Any) {
        inputTxt.textColor = .orange
    }
    
    // Text Size Buttons
    @IBAction func smallSizeBtn(_ sender: Any) {
        inputTxt.font = UIFont(name: "Avenir", size: 10)
    }
    @IBAction func midiumSizeBtn(_ sender: Any) {
        inputTxt.font = UIFont(name: "Avenir", size: 15)
    }
    @IBAction func largeSizeBtn(_ sender: Any) {
        inputTxt.font = UIFont(name: "Avenir", size: 25)
    }
    
    //  Text Font Family
    @IBAction func helveticaFontBtn(_ sender: Any) {
        inputTxt.font = UIFont(name: "HelveticaNeue-Thin", size: 15)
    }
    @IBAction func monospaceFontBtn(_ sender: Any) {
        inputTxt.font = UIFont(name: "Monospace", size:  15)
    }
    @IBAction func impactFontBtn(_ sender: Any) {
        inputTxt.font = UIFont(name: "Impact", size:  15)
    }
    
    //  Background Color of TextField
    @IBAction func grayBackColorBtn(_ sender: Any) {
        inputTxt.textColor = .white
        inputTxt.backgroundColor = .gray
    }
    @IBAction func orangeBackColorBtn(_ sender: Any) {
        inputTxt.textColor = .black
        inputTxt.backgroundColor = .orange
    }
    @IBAction func yelloBackColorBtn(_ sender: Any) {
        inputTxt.textColor = .black
        inputTxt.backgroundColor = .yellow
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
