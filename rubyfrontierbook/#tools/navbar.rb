def navbar()
  dirname = adrSiteRootTable
  embed_in_template(process(dirname))
end

def process(dir)
  arr = Array.new
  html.pagesInFolder(dir).each do |what|
    title, path = html.getTitleAndPaths(what)
    s = html.getLink(title, what)
    arr << "<li>" + s + "</li>\n"
  end
  arr
end

def embed_in_template(arr)
  return "" unless arr
  ss = <<END
  <ul class="nav">
  #{arr}
  </ul>
END
  ss
end
  