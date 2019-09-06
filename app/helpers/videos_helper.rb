module VideosHelper

  def get_url(url)
    url.match(/^.{32}(.*)$/)
  end
end
