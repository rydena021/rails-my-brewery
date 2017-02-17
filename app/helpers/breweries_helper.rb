module BreweriesHelper
  def has_photo?(brewery)
    brewery.photo.present? ? brewery.photo.path : 'download_vd1ebh.png'
  end
end

