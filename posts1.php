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
    <link href="css/posts1.css" rel="stylesheet">
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
                            <img src="images/<?=$post['thumb'];?>.jpg" class="thumb"> 
                            <h3 class="article-heading"><?=$post['title'];?></h3>
                            <p class="article-snippet"><?=substr($post['body'], 0, 150);?></p>                    
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