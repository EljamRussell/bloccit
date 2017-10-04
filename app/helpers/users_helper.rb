module UsersHelper

  def show_posts_and_comments(user)
    output = ''
    output += '<h2>Posts</h2>'

    if user.posts.any?
      output += render user.posts
    else
        output += "<p>#{user.name} has not submitted any posts... yet.</p>"
    end

    output += '<h2>Comments</h2>'

    if user.comments.any?
      output += render user.comments
    else
      output += "<p>#{user.name} has not submitted any comments... yet.</p>"
    end

    output.html_safe
  end

end
