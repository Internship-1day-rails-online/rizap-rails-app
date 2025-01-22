class User < ApplicationRecord

  validates :name, presence: { message: 'を入力してください。' }
  validates :ruby, presence: { message: 'を入力してください。' }, format: {with: /\A[ァ-ヴー]+\s[ァ-ヴー]+\z/u, message: "はカタカナのみ入力してください。"}

end

