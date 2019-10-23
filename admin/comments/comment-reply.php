
<?php foreach ($comments as $comment): ?>
    <div class="box-footer box-comments">
              <div class="box-comment">
                <!-- User image -->
                <img class="img-circle img-sm" src="<?=isset(user_id($comment->user_id)['avatar'])?"../../public/".user_id($comment->user_id)['avatar']:'../../public/img/default.jpg'?>" alt="User Image">
                <div >
                    <div class="comment-text">
                          <span class="username">
                            <?=isset(user_id($comment->user_id)['last_name']) ? user_id($comment->user_id)['last_name'] :'???' ?>
                            <span class="text-muted pull-right">8:03 PM Today<a href="{{route('comment.delete',$comment->id)}}" class="pull-right btn-box-tool"><i class="fa fa-times"></i></a></span>
                          </span><?=$comment->content?> <br>
                                <div id="myDIV">
                                  
                                </div>

                    </div>
                    
                </div>    
                <!-- /.comment-text -->
              </div>
              <?php 
                $product_id=$product_id;
                $comments=replies($comment->id);
                include 'comment-reply.php';
               ?>
               <!-- @include('admin.comment.commentsDisplay',['comments'=>$comment->replies,'product_id'=>$product_id])  -->         
            </div> 
<?php endforeach ?>
