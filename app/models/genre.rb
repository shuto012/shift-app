class Genre < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'},
    {id: 2, name: 'はい'},
    {id: 3, name: 'いいえ'}
  ]
end