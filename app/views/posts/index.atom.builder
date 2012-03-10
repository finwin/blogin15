atom_feed do |feed|
 feed.title "My Blog"
 feed.updated @posts.first.updated_at
 @posts.each do |post|
  feed.entry(post) do |entry|
    entry.title post.title
	entry.content post.body, :type => "html"
	entry.author do |author|
	 author.name "pippo palo"
	end
  end
 end
end