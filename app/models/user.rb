class User < ActiveRecord::Base
  #
  # rails g devise User 叩いたら↓の部分が作成された
  #
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #devise :database_authenticatable, :registerable,
  #       :recoverable, :rememberable, :trackable, :validatable

  #
  # qiitaの記事を参考に書いてるやつ
  # http://qiita.com/awakia/items/03dd68dea5f15dc46c15
  has_many :social_profiles, dependent: :destroy
  devise :omniauthable
  #def social_profile(provider)
  #  social_profiles.select{ |sp| sp.provider == provider.to_s }.first
  #end
end
