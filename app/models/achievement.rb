class Achievement < ActiveRecord::Base
    validates :title, presence: true
    enum privacies: [ :public_access, :private_access, :friends_access ]
    
    scope :public_access, -> { where(privacy: 0) }
    
    def description_html
       Redcarpet::Markdown.new(Redcarpet::Render::HTML).render(description)
    end
end
