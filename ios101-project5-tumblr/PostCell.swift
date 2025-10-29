import UIKit
import NukeExtensions

class PostCell: UITableViewCell {
    

    @IBOutlet weak var postImageView: UIImageView!
    
    @IBOutlet weak var postLabel: UILabel!
    
    func configure(with post: Post) {
        // Show the post summary text
        postLabel.text = post.summary
        
        // Get the first photo and load it via NukeExtensions
        if let photo = post.photos?.first {
            let url = photo.originalSize.url
            NukeExtensions.loadImage(with: url, into: postImageView)
        } else {
            postImageView.image = nil
        }
    }
}
