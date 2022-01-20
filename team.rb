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
  
 puts  "#{@name} の2020年の成績は #{@win}勝 #{@lose}敗 #{@draw}分、勝率は#{calc_win_rate
  }です。"
  
 end
 
end

#インスタンス生成と代入
giants = Team.new("Giants", 67, 45, 8)
tigers = Team.new("Tigers", 60, 53, 7)
dragons = Team.new("Dragons", 60, 55, 5)
baystars = Team.new("BayStars", 56, 58, 6)
carp = Team.new("Carp", 52, 56, 12)
swallows = Team.new("Swallows", 41, 69, 10)

# 成績表表示メソッド呼び出し
giants.show_team_result
tigers.show_team_result
dragons.show_team_result
baystars.show_team_result
carp.show_team_result
swallows.show_team_result