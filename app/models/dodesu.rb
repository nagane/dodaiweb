class Dodesu < ActiveRecord::Base

  def data=(data)
    self.ctype = data.content_type
    self.image = data.read
  end
  
  def file_invalid?
    ps = [ 'image/jpeg' , 'image/gif' , 'image/png' ]
    errors.add(:image, '画像ファイルじゃない') if !ps.include?(self.ctype)
    errors.add(:image, 'orver 10MB') if self.photo.length > 10.megabyte
  end

end
