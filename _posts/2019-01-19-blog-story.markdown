---
layout: post
title: An academic site building story 
description: Why, how and what's next 
date: 2019-01-18 16:11:00-0400 
comments: true
---

After lingering in my to-do list for so long, I'm finally setting up my own site. This comes after learning about [Jekyll](https://jekyllrb.com/) as I was building the [Standard Operating Procedures site](https://h3abionet.github.io/H3ABionet-SOPs/) of the [H3ABioNet consortium](https://h3abionet.org/). It seemed such a loss not to extend the scope to my own universe, so here we go.



***

#### My Wish list

- _Show my [`publications`](/publications):_ <br>
 [Jekyll Scholr plugin](https://github.com/inukshuk/jekyll-scholar) does not play nicely with [Github pages](https://pages.github.com/), so it is rather a challenge to show [my publications here](/publications) in categories. I would like this freedom, hence I'm guessing will need to move to [cloudfare]() at some point (or a similar service!).

- _Migrate [my old `blog`](https://azzaeahmed.wordpress.com/):_ <br>
  It seems only right to have a single plact to put all my blogs, even though it is all personal stuff anyways. [This](https://benjamintravis.com/blog/jekyll-github-pages-from-wordpress) and [this](https://girliemac.com/blog/2013/12/27/wordpress-to-jekyll/) article are nice tutorials for going from [`wordpress`](https://wordpress.com/) to [`Jekyll`](https://jekyllrb.com/)

- _Build my [`places`](/places) page:_ <br>
  I like to be able to show places I visited, with some annotations on when/why or even a nice photo. A `location map` is nicely implemented in the [academicpages](https://academicpages.github.io/) theme, so check if you could adopt here. Code is [here](https://github.com/academicpages/academicpages.github.io/blob/master/talkmap.ipynb)

> Remember to pay credit!

- _Adding courses to my [`teaching`](/teaching) page:_ <br>
  I only mashed up some random content for my courses thus far. Clean up is obviously needed 

- _`Tags` :exclamation:_ <br>
   I find a blog meaningless if not sortable easily. Would like to be able to use tags in my blog posts or long announcements 

- _Social integration_: <br>
  Of course, would be nice to push to [Twitter](https://twitter.com/) rather automatically!


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




