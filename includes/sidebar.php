<?php

    //popular posts
    $query = 'SELECT * FROM posts';
	$result = mysqli_query($conn, $query);
	$popular_posts = mysqli_fetch_all($result, MYSQLI_ASSOC);
    mysqli_free_result($result);

?>




<aside class="grid-item sidebar">
    <section class="search-articles">
        <input type="text" placeholder="search">
    </section>
    <section class="popular-articles">
        <?php foreach($popular_posts as $popular_post) : ?>
            <div class="popular-article">
                <img src="images/<?=$popular_post['thumb'];?>.jpg" class="popular-article-thumb">
                <h4 class="popular-article-head"><a href="#" class="popular-article-link"><?=$popular_post['title'];?></a></h4>
            </div>
        <?php endforeach; ?>
    </section>
    <section class="ad">
        
    </section>
</aside>