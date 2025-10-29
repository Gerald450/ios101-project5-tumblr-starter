
//  ViewController.swift
//  ios101-project5-tumbler
//

import UIKit
import Nuke
import NukeExtensions

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    
    
    // Store fetched posts
       var posts: [Post] = []
       
       override func viewDidLoad() {
           super.viewDidLoad()
           
           tableView.dataSource = self
           tableView.delegate = self

           tableView.rowHeight = UITableView.automaticDimension
           tableView.estimatedRowHeight = 150
           
           fetchPosts()
       }
       
       func fetchPosts() {
           let url = URL(string: "https://api.tumblr.com/v2/blog/humansofnewyork/posts/photo?api_key=1zT8CiXGXFcQDyMFG7RtcfGLwTdDjFUJnZzKJaWTmgyK4lKGYk")!
           
           URLSession.shared.dataTask(with: url) { data, response, error in
               if let error = error {
                   print("❌ Error: \(error.localizedDescription)")
                   return
               }
               
               guard let data = data else {
                   print("❌ No data received.")
                   return
               }
               
               do {
                   let blog = try JSONDecoder().decode(Blog.self, from: data)
                   let fetchedPosts = blog.response.posts
                   
                   DispatchQueue.main.async {
                       self.posts = fetchedPosts
                       self.tableView.reloadData()
                       print("✅ Loaded \(fetchedPosts.count) posts.")
                   }
                   
               } catch {
                   print("❌ JSON decoding error: \(error.localizedDescription)")
               }
           }.resume()
       }
    
    // MARK: - UITableViewDataSource
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return posts.count
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath) as! PostCell
            let post = posts[indexPath.row]
            cell.configure(with: post)
            return cell
        }
    }

   
