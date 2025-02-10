
import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    let tableView = UITableView()
    
    
    let homer = Simpsons(name: "Homer",job: "homer job",image: UIImage(named: "homer")!)
    let bart = Simpsons(name: "Bart",job: "bart job",image: UIImage(named: "bart")!)
    let maggie = Simpsons(name: "Maggie",job: "maggie job",image: UIImage(named: "maggie")!)
    let lisa = Simpsons(name: "Lisa",job: "lisa job",image: UIImage(named: "lisa")!)
    let marge = Simpsons(name: "Marge",job: "marge job",image: UIImage(named: "marge")!)
    
    var simpsonsArray: [Simpsons] = []
    var chosenSimpson : Simpsons?

    override func viewDidLoad() {
        super.viewDidLoad()
        simpsonsArray = [homer,bart,maggie,lisa,marge]

        
        tableView.frame = view.bounds
        tableView.delegate = self
        tableView.dataSource = self
        
        view.addSubview(tableView)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)-> Int{
        return simpsonsArray.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = simpsonsArray[indexPath.row].name
        cell.contentConfiguration = content
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = simpsonsArray[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedSimpson = chosenSimpson
        }
    }
    
    

}

