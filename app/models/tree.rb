class Tree < ApplicationRecord

    validates :instagram, presence: true, format: { with: URI::DEFAULT_PARSER.make_regexp(%w[http https]), message: 'Invalid URL format' }
    # validates :youtube, presence: true, format: { with: URI::DEFAULT_PARSER.make_regexp(%w[http https]), message: 'Invalid URL format' }
    # validates :x, presence: true, format: { with: URI::DEFAULT_PARSER.make_regexp(%w[http https]), message: 'Invalid URL format' }

    validates :name, presence: true, length: { minimum: 5, message: 'must be at least 5 charachters long' }


    extend FriendlyId
    friendly_id :name, use: :slugged

    belongs_to :user
end
