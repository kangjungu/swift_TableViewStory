//
//  AttractuibTableViewController.swift
//  TableViewStory
//
//  Created by JHJG on 2016. 7. 4..
//  Copyright © 2016년 KangJungu. All rights reserved.
//

import UIKit

class AttractuibTableViewController: UITableViewController {

    var attractionImages = [String]()
    var attractionNames = [String]()
    var webAddresses = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        attractionNames = ["Buckingham Palace",
                            "The Eiffel Tower",
                            "The Grand Canyon",
                            "Windsor Castle",
                            "Empire State Building"
        ]
        webAddresses = ["https://en.wikipeida.org/wiki/Buckingham_Palace",
                        "https://en.wikipeida.org/wiki/Eiffel_Tower",
                        "https://en.wikipeida.org/wiki/Grand_Canyon",
                        "https://en.wikipeida.org/wiki/Windsor_Castle",
                        "https://en.wikipeida.org/wiki/Empire_State_Building"
        ]
        attractionImages = ["buckingham_palace.jpg",
                            "eiffel_tower.jpg",
                            "grand_canyon.jpg",
                            "windsor_castle.jpg",
                            "empire_state_building.jpg"
        ]
        //테이블 뷰의 예상 행 높이를 설정한다.(성능향상 및 내비게이션이 추가될때 행 높이와 충돌하지 않도록 함)
        tableView.estimatedRowHeight = 50
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    //섹션갯수
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    //섹션 별 테이블 아이템 갯수
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return attractionNames.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //재활용할 셀이 큐에 있으면 dequeue하고 없으면 셀을 만든다.
        let cell = self.tableView.dequeueReusableCellWithIdentifier("AttractionTableCell", forIndexPath: indexPath) as! AttractionTableViewCell
        
        let row = indexPath.row
        //settings 앱에서 사용자가 선택한 폰트 크기가 반영.
        cell.attractionLable.font = UIFont.preferredFontForTextStyle(UIFontTextStyleHeadline)
        cell.attractionLable.text = attractionNames[row]
        cell.attractionImage.image = UIImage(named: attractionImages[row])
        
        return cell
    }
    

    //세그웨이가 실행되기 전에 호출됨.
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        print(0)
        //세그웨이로 데이터 전달
        //segue의 id가 "ShowAttractionDetails" 일때
        if segue.identifier == "ShowAttractionDetails" {
            print(1)
            //목적지 ViewController를 선언해주고
            let detailViewController = segue.destinationViewController as! AttractionDetailViewController
            
            //현재 선택된 열의 indexPath를 알아낸다.
            let myIndexPath = self.tableView.indexPathForSelectedRow!
            let row = myIndexPath.row
            //목적지 viewController에서 website 변수를 채운다.
            detailViewController.webSite = webAddresses[row]
        }
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
