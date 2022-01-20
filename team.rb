# Teamクラスの定義
class Team

# Teamクラスに持たせる4つのインスタンス変数を定義
 attr_accessor :name, :win, :lose, :draw

# initializeの処理を定義
 def initialize(name, win, lose, draw)
  @name = name
  @win = win
  @lose = lose
  @draw = draw
 end
 
# 勝率計算メソッドを定義
 def calc_win_rate
  
  @win.to_f / (@win + @lose).to_f
  
 end

# 成績表示メソッドを定義
 def show_team_result
  
  "#{@name} の2020年の成績は #{@win}勝 #{@lose}敗 #{@draw}分、勝率は#{calc_win_rate
  }です。"
  
 end
 
end

# インスタンスの生成と引数代入
Giants = Team.new("Giants", 67, 45, 8)
Tigers = Team.new("Tigers", 60, 53, 7)
Dragons = Team.new("Dragons", 60, 55, 5)
BayStars = Team.new("BayStars", 56, 58, 6)
Carp = Team.new("Carp", 52, 56, 12)
Swallows = Team.new("Swallows", 41, 69, 10)

# 成績表表示メソッド呼び出し
puts Giants.show_team_result
puts Tigers.show_team_result
puts Dragons.show_team_result
puts BayStars.show_team_result
puts Carp.show_team_result
puts Swallows.show_team_result

