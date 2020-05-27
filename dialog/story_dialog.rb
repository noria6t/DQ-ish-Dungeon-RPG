module StoryDialog

  def opning_enter_name_log
    puts "DQ-ish Dungeon RPG"
    sleep 1
    puts "主人公の名前を入力して下さい"
  end

  def top_select_screen_log
    puts <<~EOS
    選択したいコマンドの数字を半角で入力して下さい。(半角数字以外はスタートに戻ります)
    1:ゲームを始める
    2:ゲームの結果を確認する
    3:ゲームを終了する
    EOS
  end

end