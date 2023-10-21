# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
    {name: "リーダブルコード", note: "より良いコードを書くためのシンプルで実践的なテクニック"}, 
    {name: "トラブル知らずのシステム設計", note: "システム設計の要点を図解で説明してくれます"}, 
    {name: "たのしいRuby", note: "Rubyの入門におすすめです"}, 
    {name: "入門Git", note: "gitについての基本操作から内部構造まで解説してくれます"}, 
    {name: "アルゴリズム図鑑", note: "アルゴリズムについてカラーイラストでしっかり解説してくれます"}, 
    {name: "達人プログラマー", note: "プログラマ入門者は必読！"}, 
    {name: "データベース実践入門", note: "	効率的なSQL文を教えてくれます"}, 
].map{|row| Hashie: :Mash.new(row) }.each do |date|
    Book.create!(
      name: date.name,
      note: date.note,
      )
end