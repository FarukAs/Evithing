import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate {
    
    
    @IBOutlet var myTableView: UITableView!
    
    
    @IBOutlet var segmentedControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        myTableView.delegate = self
        myTableView.dataSource = self
        
        
      
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath as IndexPath)
        cell.textLabel?.text = "Selam"
        return cell
    }

}
