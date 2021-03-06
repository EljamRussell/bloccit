class FavoriteMailer < ApplicationMailer
  default from: "eljamrussell@gmail.com"

  def new_comment(user, post, comment)

 # three different headers to enable conversational threading
     headers["Message-ID"] = "<comments/#{comment.id}@bloccit.example>"
     headers["In-Reply-To"] = "<post/#{post.id}@bloccit.example>"
     headers["References"] = "<post/#{post.id}@bloccit.example>"

     @user = user
     @post = post
     @comment = comment

 # use the mail method (take hash of to address, subject, an from (default) and cc/bcc)
     mail(to: user.email, subject: "New comment on #{post.title}")
   end
 end
