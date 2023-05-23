class Tweet < ApplicationRecord
    belongs_to :user
# 1対多の、多のtweetモデルに単数形のモデル名を記載
end