<?php
    require('database.php');

	$query = 'SELECT * FROM posts';
	$result = mysqli_query($conn, $query);
	$posts = mysqli_fetch_all($result, MYSQLI_ASSOC);
    mysqli_free_result($result);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/posts3.css" rel="stylesheet">
    <title>Document</title>
</head>
<body>
  
    <div class="wrapper">
        <div class="grid-container container">
            
            <?php include_once('includes/header.php'); ?>
            
            <?php include_once('includes/nav.php') ?>
            
            
            <main class="grid-item main">
                <section class="articles">
                    <?php foreach($posts as $post) : ?>
                        <article class="article">
                            <div class="post-heading">
                                <h1><a href="#" class="article-link"><?=$post['title'];?></a></h1>
                            </div>
                            <div class="post-thumb">
                                <img src="images/<?=$post['thumb'];?>.jpg" class="thumb">
                            </div>
                            <div class="post-entry">
                                <p class="post-snippet"><?=substr($post['body'], 0, 180);?></p>
                                <p>
                                    <span class="post-author"><?=$post['author'];?></span>
                                    <span>&nbsp;&nbsp;|&nbsp;&nbsp;</span> 
                                    <span class="post-created-at"><?=date('l-j-Y',strtotime($post['created_at']));?></span>
                                </p>
                                <button class="post-button">Read More</button>
                            </div>              
                        </article>
                    <?php endforeach; ?>
                </section>
            </main>


            <?php include_once('includes/sidebar.php') ?>
            
            <?php include_once('includes/footer.php') ?>
            
        </div>
    </div>
 
</body>
</html>