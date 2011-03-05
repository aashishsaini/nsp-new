module UsersHelper
  def add_more_link(name)
    link_to_function name do |page|
      page.insert_html :bottom, :place, :partial => 'gender' 
    end
  end
  def add_lang_link(name)
    link_to_function name do |page|
      page.insert_html :bottom, :lang, :partial => 'lang' 
    end
    end
end
