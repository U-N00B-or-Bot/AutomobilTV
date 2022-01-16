//U-N00B-or-Bot

import UIKit

class MainViewController: UITabBarController {
    let tea = Auto.getAutoList()
    override func viewDidLoad() {
        super.viewDidLoad()
        changeViewControllers()
    }
    

    
    private func changeViewControllers(){
        guard let viewControllers = self.viewControllers else {return}
        for controller in viewControllers {
            if let NavVC = controller as? UINavigationController {
                if let AutoVC = NavVC.topViewController as? AutomobileViewController {
                    AutoVC.autoList = tea
                } 
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
