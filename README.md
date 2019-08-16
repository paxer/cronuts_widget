# Challenge

This cronut acceptance widget is embeded in sites around the world as an iFrame. It's been hugefully successful but lately many users have wanted to use their own cronuts and donuts URL instead of the default ones used in the checkbox label.

Your task is to allow <code>cronuts_url</code> and/or <code>donuts_url</code> query string parameters. If either are included in the widget URL (this page), the default link it represents should be overwritten with the value supplied.

For example, if I supplied <code>http://localhost:3000?cronuts_url=https://google.com</code> then the <strong>cronuts</strong> link in the label below would lead to <code>https://google.com</code> instead of <code>https://upload.wikimedia.org/wikipedia/commons/8/8b/April_2016_Cronut%C2%AE_2_Burnt_Vanilla_Caramel_-_photo_by_Dominique_Ansel_Bakery.jpg</code> and the <strong>donuts</strong> link would remain unchanged from its default.

While you're at it, lets also make use of Rails I18n for the label text.
