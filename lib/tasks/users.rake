namespace :users do
  desc "TODO"
  task remind_tv_shows: :environment do
    favs = Favorite.all.includes(:user, show: :show_times)
    favs.each do |fav|
      fav.show.show_times.where('timing > ? AND timing < ?', Time.current, Time.current + 30.minutes).each do |show_time|
        UserMailer.remind_tv_show(fav.user, show_time).deliver
      end
    end
  end
end
