require './controller/stories_controller'
require './character/brave'

games_controller = GamesController.new
while true do
  stories_controller = StoriesController.new
  stories_controller.opning_enter_name_log
  brave_name = gets.to_s.chomp
  stories_controller.top_select_screen_log
  opning_select_command = gets.to_i
  case opning_select_command
  when 1
    revise_status_array = stories_controller.revise_status_array_define
    p revise_status_array
    brave = Brave.new(name: brave_name, hp: 30, mp: 10, offense: 12, defense: 7, agility: 10, item: {
      weapon: "ひのきの棒", armor: "布の服", tool: ["やくそう", "やくそう"]}, magic_skill: [], experience_point: 0, gold: 0, physical_strength: 10, magical_ability: 10, power: 10, protect: 10, personality: revise_status_array)
    puts "#{brave_name}:#{opning_select_command}"
    puts <<~EOS
    キャラクターを作成しました。
    キャラクター名:#{brave.name}
    HP:#{brave.hp}/MP:#{brave.mp}/攻撃力:#{brave.offense}/防御力:#{brave.defense}/すばやさ:#{brave.agility}
    このキャラクターで開始しますか？
    EOS
    sleep 5
    games_controller.stage_1(brave: brave)
  when 2
    puts "ゲームの結果がありません。"
  when 3
    puts <<~EOS
    終了するとゲームの記録は全て消去されます。本当に終了しますか？
    1:はい
    2:いいえ
    EOS
    opning_select_command = gets.to_i
    if opning_select_command == 1
      exit
    end
  else
  end
end

