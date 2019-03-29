---
layout: post
title: A beginning story 
description: How this site came to life! 
date: 2019-01-18 16:11:00-0400 
comments: true
tags: [story, blogging]
categories: Web design
---


Surprisingly, this is far from my first formal attempt to build a website. 

<div class="img_row">
   <a href="http://eeess.blogspot.com/">
       <img class="col one left" src="{{ site.baseurl }}/assets/img/EEESS-blog.png">
   </a>
   <img class="col one" src="{{ site.baseurl }}/assets/img/GAIA-app.png">
   <a href="https://h3abionet.github.io/H3ABionet-SOPs/index.html">
       <img class="col one right" src="{{ site.baseurl }}/assets/img/H3ABioNet-SOPs.png">
   </a>
</div>

<div class="col three caption">
    Example sites I designed: EEESS curricula blog (2008); GAIA app (2013); H3ABioNet SOPs (2019) <br>
    Now that I'm looking from a distance, I see that blue has always been the king of my designs!
</div>


First time was during my undergraduate studies. Back then, I was acting as the academic secertary of the [_Electrical and Electronics Engineering Students Society_](https://www.facebook.com/EEESS4/); and [the blog](http://eeess.blogspot.com/) was a convenient means for collecting all academic materials of value to undergrads. I recall doing this again as a teaching assistant for the subjects I assissted with (but the blogging service I used back then seized to work). 

It wasn't until my MSc time that I programatically built a website hosting an interactive app demonstrating the [_Daisy world and Gaia theory_](https://en.wikipedia.org/wiki/Gaia_hypothesis) about the feedback loops controlling the eco-system. Back then, I used [DreamWeaver](http://www.adobe.com/products/dreamweaver), which basically allows easy control of the `html` and `css` styling aspects of web pages; whereas the app itself was built using [Netlogo](https://ccl.northwestern.edu/netlogo/), an interactive multi-agent programming language. 

Finally, this very site comes after learning about [Jekyll](https://jekyllrb.com/) as I was building the [_Standard Operating Procedures site_](https://h3abionet.github.io/H3ABionet-SOPs/) of the [H3ABioNet consortium](https://h3abionet.org/). It seemed such a loss not to extend the scope to my own universe, so here we go.


***

#### My Wish list for this site:

- ~~_Build my [`places`](/places) page:_~~ <br>
  Technical details on how this was done are posted [here](/blog/2019/adding-locations/) 

- _Add courses to my [`teaching`](/teaching) page:_ <br>
  I only mashed up some random content for my courses thus far. Clean up is obviously needed 

- _Show my [`publications`](/publications):_ <br>
 [Jekyll Scholr plugin](https://github.com/inukshuk/jekyll-scholar) does not play nicely with [Github pages](https://pages.github.com/), so it is rather a challenge to show [my publications here](/publications) in categories. I would like this freedom, hence I'm guessing will need to move to [cloudfare]() at some point (or a similar service!).

- _Migrate [my old `blog`](https://azzaeahmed.wordpress.com/):_ <br>
  It seems only right to have a single plact to put all my blogs, even though it is all personal stuff anyways. [This](https://benjamintravis.com/blog/jekyll-github-pages-from-wordpress) and [this](https://girliemac.com/blog/2013/12/27/wordpress-to-jekyll/) article are nice tutorials for going from [`wordpress`](https://wordpress.com/) to [`Jekyll`](https://jekyllrb.com/)

- _Use `Tags` and wordclouds_ <br>
   I find a blog meaningless if not sortable easily. Would like to be able to use tags in my blog posts or long announcements. I'm likely to need to play around with this file `blog/index.html`

- _Social integration_: <br>
  Of course, would be nice to push to [Twitter](https://twitter.com/) rather automatically!

***

#### Formating tips:

- _Including code:_ <br>
  Simply, surround your code with liquid tags: {% raw  %} {% highlight c++ %}  CODE {% endhighlight %} {% endraw %}

- _Including block quotes:_ <br>
  Simply append your block with the symbol `>`. If you like to do it the `html` way, then use `<blockquote>` and `</blockquote>`

- _Horizontal lines:_ <br>
  Simply use `***` where you like it to be- or use `<hr>` if you prefer the `html` way

- _Equations and math:_ <br>
  The theme supports [KaTeX](https://khan.github.io/KaTeX/) engine, so you can use in-line equations via `$$` before and after the equation. Put it in a separate line if it is large

- _Images and caption_: <br>
  Use something as below:
{% highlight html %}
<div class="img_row">
    <img class="col three" src="{{ site.baseurl }}/assets/img/7.jpg">
</div>
<div class="col three caption">
    A simple, elegant caption looks good between image rows, after each row, or doesn't have to be there at all. 
</div>
{% endhighlight %}

***




