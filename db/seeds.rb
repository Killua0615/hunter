# Clear existing data (optional, for idempotency)
Character.delete_all
Affiliation.delete_all
NenAbility.delete_all
NenAbilityRelation.delete_all
Episode.delete_all
EpisodeRelation.delete_all

# Reset primary key sequences (optional, for idempotency)
tables = %w(characters affiliations nen_abilities nen_ability_relations episodes episode_relations)
tables.each do |table|
  ActiveRecord::Base.connection.execute("ALTER TABLE #{table} AUTO_INCREMENT = 1")
end

# Affiliation データの追加
Affiliation.create([
  { AffiliationID: 1, Affiliation: "くじら島" },
  { AffiliationID: 2, Affiliation: "ゾルディック家" },
  { AffiliationID: 3, Affiliation: "ノストラードファミリー" },
  { AffiliationID: 4, Affiliation: "十二支ん" },
  { AffiliationID: 5, Affiliation: "幻影旅団" },
  { AffiliationID: 6, Affiliation: "心源流拳法" },
  { AffiliationID: 7, Affiliation: "GIプレイヤー" },
  { AffiliationID: 8, Affiliation: "陰獣" },
  { AffiliationID: 9, Affiliation: "GIゲームマスター" },
  { AffiliationID: 10, Affiliation: "ハンター協会 会長" }
])

# Character データの追加
Character.create([
  { characterID: 1, DebutEpisode: 1, name: "ゴン＝フリークス", AffiliationID: 1 },
  { characterID: 2, DebutEpisode: 6, name: "キルア＝ゾルディック", AffiliationID: 2 },
  { characterID: 3, DebutEpisode: 2, name: "クラピカ", AffiliationID: 3 },
  { characterID: 4, DebutEpisode: 2, name: "レオリオ＝パラディナイト", AffiliationID: 4 },
  { characterID: 5, DebutEpisode: 5, name: "ヒソカ＝モロウ", AffiliationID: 5 },
  { characterID: 6, DebutEpisode: 1, name: "カイト", AffiliationID: 1 },
  { characterID: 7, DebutEpisode: 36, name: "アルミ＝ゾルディック", AffiliationID: 2 },
  { characterID: 8, DebutEpisode: 46, name: "ウイング", AffiliationID: 6 },
  { characterID: 9, DebutEpisode: 46, name: "ズシ", AffiliationID: 6 },
  { characterID: 10, DebutEpisode: 131, name: "ビスケット＝クルーガー", AffiliationID: 7 },
  { characterID: 11, DebutEpisode: 25, name: "ネテロ", AffiliationID: 10 },
  { characterID: 12, DebutEpisode: 67, name: "ネオンノストラード", AffiliationID: 3 },
  { characterID: 13, DebutEpisode: 67, name: "センリツ", AffiliationID: 3 },
  { characterID: 14, DebutEpisode: 70, name: "梟", AffiliationID: 8 },
  { characterID: 15, DebutEpisode: 156, name: "レイザー", AffiliationID: 9 },
  { characterID: 16, DebutEpisode: 1, name: "ジン＝フリークス", AffiliationID: 4 },
  { characterID: 17, DebutEpisode: 131, name: "ゲンスルー", AffiliationID: 7 },
  { characterID: 18, DebutEpisode: 80, name: "クロロ＝ルシルフル", AffiliationID: 5 }
])

# NenAbility データの追加
NenAbility.create([
  { NenAbilityID: 1, AuraType: "強化系", NenAbilityName: "単純一途" },
  { NenAbilityID: 2, AuraType: "変化系", NenAbilityName: "気まぐれ" },
  { NenAbilityID: 3, AuraType: "具現化系", NenAbilityName: "神経質" },
  { NenAbilityID: 4, AuraType: "特質系", NenAbilityName: "個人主義者" },
  { NenAbilityID: 5, AuraType: "放出系", NenAbilityName: "大雑把" },
  { NenAbilityID: 6, AuraType: "操作系", NenAbilityName: "マイペース" }
])

# NenAbilityRelation データの追加
NenAbilityRelation.create([
  { CharacterID: 1, NenAbilityID: 1 },
  { CharacterID: 2, NenAbilityID: 2 },
  { CharacterID: 3, NenAbilityID: 3 },
  { CharacterID: 3, NenAbilityID: 4 },
  { CharacterID: 4, NenAbilityID: 5 },
  { CharacterID: 5, NenAbilityID: 2 },
  { CharacterID: 6, NenAbilityID: 3 },
  { CharacterID: 7, NenAbilityID: 6 },
  { CharacterID: 8, NenAbilityID: 1 },
  { CharacterID: 9, NenAbilityID: 6 },
  { CharacterID: 10, NenAbilityID: 2 },
  { CharacterID: 11, NenAbilityID: 1 },
  { CharacterID: 12, NenAbilityID: 4 },
  { CharacterID: 13, NenAbilityID: 5 },
  { CharacterID: 14, NenAbilityID: 6 },
  { CharacterID: 15, NenAbilityID: 5 },
  { CharacterID: 17, NenAbilityID: 3 },
  { CharacterID: 18, NenAbilityID: 4 }
])

# Episode データの追加
Episode.create([
  { EpisodeID: 1, EpisodeName: "ハンター試験編" },
  { EpisodeID: 2, EpisodeName: "天空競技場編" },
  { EpisodeID: 3, EpisodeName: "ヨークシン編" },
  { EpisodeID: 4, EpisodeName: "GI編" },
  { EpisodeID: 5, EpisodeName: "キメラアント編" },
  { EpisodeID: 6, EpisodeName: "会長選挙編" },
  { EpisodeID: 7, EpisodeName: "くじら島" }
])

# EpisodeRelation データの追加
EpisodeRelation.create([
  { CharacterID: 1, EpisodeID: 1 },
  { CharacterID: 1, EpisodeID: 2 },
  { CharacterID: 1, EpisodeID: 3 },
  { CharacterID: 1, EpisodeID: 4 },
  { CharacterID: 1, EpisodeID: 5 },
  { CharacterID: 1, EpisodeID: 6 },
  { CharacterID: 2, EpisodeID: 1 },
  { CharacterID: 2, EpisodeID: 2 },
  { CharacterID: 2, EpisodeID: 3 },
  { CharacterID: 2, EpisodeID: 4 },
  { CharacterID: 2, EpisodeID: 5 },
  { CharacterID: 2, EpisodeID: 6 },
  { CharacterID: 3, EpisodeID: 1 },
  { CharacterID: 3, EpisodeID: 3 },
  { CharacterID: 4, EpisodeID: 1 },
  { CharacterID: 4, EpisodeID: 3 },
  { CharacterID: 4, EpisodeID: 6 },
  { CharacterID: 5, EpisodeID: 1 },
  { CharacterID: 5, EpisodeID: 2 },
  { CharacterID: 5, EpisodeID: 3 },
  { CharacterID: 5, EpisodeID: 4 },
  { CharacterID: 6, EpisodeID: 7 },
  { CharacterID: 6, EpisodeID: 5 },
  { CharacterID: 7, EpisodeID: 1 },
  { CharacterID: 7, EpisodeID: 3 },
  { CharacterID: 8, EpisodeID: 2 },
  { CharacterID: 9, EpisodeID: 2 },
  { CharacterID: 10, EpisodeID: 4 },
  { CharacterID: 11, EpisodeID: 1 },
  { CharacterID: 11, EpisodeID: 5 },
  { CharacterID: 12, EpisodeID: 3 },
  { CharacterID: 13, EpisodeID: 3 },
  { CharacterID: 14, EpisodeID: 3 },
  { CharacterID: 15, EpisodeID: 4 },
  { CharacterID: 16, EpisodeID: 6 },
  { CharacterID: 17, EpisodeID: 4 },
  { CharacterID: 18, EpisodeID: 3 }
])

# Picture データの追加
Character.find_each do |character|
  case character.characterID
  when 1
    character.image.attach(io: URI.open('https://dengekionline.com/images/4PYD/1qaf/8H4Y/3So9/CkBqflznRpCSV2zzzF2I8SoCseBkTHSB8xNPLEX2v7pZ2J4N66pUQMwhCmpBrGYuILpSNaIzAwvaXVXO_main.jpg'), filename: 'gon.jpg')
  when 2
    character.image.attach(io: URI.open('https://www.chibakan-yachiyo.net/wp-content/uploads/fig-kirua-i.jpg'), filename: 'killua.jpg')
  when 3
    character.image.attach(io: URI.open('https://image2.b-ch.com/ttl2/3154/3154047a.jpg?impolicy=fitin&ww=480&hh=270'), filename: 'kurapika.jpg')
  when 4
    character.image.attach(io: URI.open('https://animemiru.jp/wp-content/uploads/2018/05/rr01-1-480x271.jpg'), filename: 'leorio.jpg')
  when 5
    character.image.attach(io: URI.open('https://e0.pxfuel.com/wallpapers/52/248/desktop-wallpaper-anime-hunter-x-hunter-hisoka.jpg'), filename: 'hisoka.jpg')
  when 6
    character.image.attach(io: URI.open('https://pbs.twimg.com/media/EODWorVWsAAvbbt.jpg'), filename: 'kaito.jpg')
  when 7
    character.image.attach(io: URI.open('https://renote.net/files/blobs/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBMDRQTHc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--5af99d4feffb6731bb72d693ec351d90a972839e/irumi.jpg'), filename: 'irumi.jpg')
  when 8
    character.image.attach(io: URI.open('https://image2.b-ch.com/ttl2/3154/3154028a.jpg?impolicy=fitin&ww=640&hh=380'), filename: 'wing.jpg')
  when 9
    character.image.attach(io: URI.open('https://huncyclopedia.com/wp-content/uploads/574-720x405.jpg'), filename: 'zusi.jpg')
  when 10
    character.image.attach(io: URI.open('https://huncyclopedia.com/wp-content/uploads/117-720x407.jpg'), filename: 'bisk.jpg')
  when 11
    character.image.attach(io: URI.open('https://huncyclopedia.com/wp-content/uploads/65.jpg'), filename: 'netero.jpg')
  when 12
    character.image.attach(io: URI.open('https://image2.b-ch.com/ttl2/3154/3154041a.jpg?impolicy=fitin&ww=640&hh=380'), filename: 'neon.jpg')
  when 13
    character.image.attach(io: URI.open('https://res.cloudinary.com/macm/image/upload/c_fill,h_400,w_700/z3npmom7hm6jz3s5rk90.jpg'), filename: 'senritsu.jpg')
  when 14
    character.image.attach(io: URI.open('https://huncyclopedia.com/wp-content/uploads/426-720x405.jpg'), filename: 'nennjyu.jpg')
  when 15
    character.image.attach(io: URI.open('https://meigenkakugen.net/wp-content/uploads/razor.jpg'), filename: 'ruyzer.jpg')
  when 16
    character.image.attach(io: URI.open('https://ipcprlegislative.org/wp-content/uploads/2022/01/zin.jpg'), filename: 'gine.jpg')
  when 17
    character.image.attach(io: URI.open('https://renote.net/files/blobs/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBd2JIZ2c9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--4d48dc2f3d610ae9581b613be6a3bba031d218e9/FC62056C-3348-4006-BE72-5462D189E683.jpeg'), filename: 'gensrue.jpg')
  when 18
    character.image.attach(io: URI.open('https://image2.b-ch.com/ttl2/3154/3154051a.jpg?impolicy=fitin&ww=640&hh=380'), filename: 'kuroro.jpg')
  end
end