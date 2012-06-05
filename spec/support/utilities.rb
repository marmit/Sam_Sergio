def full_title(page_title)
  base_title = "Sam and Sergio Getting Married"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end
