
<?php foreach ($comments as $comment): ?>
	
<div class="blog-details content">
    <div class="comments_area">
        
        <ul class="comment__list">
            <li>
                <div class="wn__comment">
                    <div class="thumb">
                        <img src="<?=isset(user_id($comment->user_id)['avatar'])?user_id($comment->user_id)['avatar']:'../public/img/default.jpg'?>" alt="comment images">
                    </div>
                    <div class="content">
                        <div class="comnt__author d-block d-sm-flex">
                            <span><?=isset(user_id($comment->user_id)['last_name']) ? user_id($comment->user_id)['last_name'] :'???' ?></span>
                            <span><?=$comment->created_at?></span>
                            <span ><a href="../admin/comments/delete.php?delete=<?=$comment->id?>">delete</a></span>
                        </div>
                        <p><?=$comment->content?></p>
                        <p >
                            <form  method="post" action="../admin/comments/add.php" id="an" >
                            
                           <div class="form-group">
                                <input type=text name=content class="form-control" />
                                <input type=hidden name=product_id value="<?=$product_id?>" />
                                <input type=hidden name=parent_id value="<?=$comment->id?>" />
                            </div>
                            <div class="form-group">
                                <input type=submit class="btn btn-warning" value="Reply" />
                            </div>
                            </form>
                        </p>
                    </div> 
                </div>

            </li>
            <li class="comment_reply">
				<?php 
				$comments=replies($comment->id);
                $product_id=$product_id;
				// var_dump($comments);
				include 'comment.php';

				 ?>
            </li>
                                    
                                
        </ul>
    </div>
</div>
	
<?php endforeach ?>