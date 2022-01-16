//U-N00B-or-Bot

import UIKit

class TeaDetailsViewController: UIViewController {
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var DescLabel: UILabel!
    
    var tea:Auto!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        photo.image = UIImage(named: tea.photo)
        DescLabel.text = tea.photo
        // Do any additional setup after loading the view.
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
