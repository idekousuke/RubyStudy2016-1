=begin
	課題5

	Hit And Blowゲームを完成させよ

	【ルール】
	ランダムな用意された3桁の数値（解答）を当てるゲーム。
	※ゲームクリアするまでの回答数を競うゲーム。
	ユーザが答えた3桁の数値に対して、hitまたはblowのヒントを与える。

	hitとは
	数字も場所も当たっている数字
	3hitでゲームクリア
	blowとは
	数字は当たっているが場所が違う数字

	例.正解が123の場合921は
	2で1Hit,で1で1Blow

	【ゲーム仕様】
	•ユーザの入力値をチェックすること（エラーメッセージ表示）
	　数値チェック：数値かどうか
	　桁数チェック：3ケタかどうか
	　同一値チェック：同じ値を入力していないかどうか
	•ゲーム中「0」を入力でゲームを終了して初期状態に戻すこと
	•ゲームクリア後、回答回数を表示すること
	　表示形式：[Hit:○ blow:○]

	【コード条件】
	•クラス/メソッドを使うこと
=end

def make_answer
	list = [0,1,2,3,4,5,6,7,8,9]
	answer = []
	while answer.size < 3
		rand_num = rand(list.size-1)
		answer << list[rand_num]
		list.delete_at(rand_num)
	end
	return answer
end

def check(user, answer)
	hit,blow = 0,0
	3.times{ |i| hit += 1 if user[i] == answer[i] }
	answer.each{ |item_ans|
		user.each{ |item_user| blow += 1 if item_ans == item_user }
	}
	blow -= hit
	return [hit, blow]
end

answer = make_answer
p "== Hit and Blow =="
p "Please enter number (3-digit)"

try_times = 0

loop{
	try_times += 1
	printf("try %d ::", try_times)
	user = $stdin.gets.chomp!.unpack("a1a1a1a1").collect{|i| i.to_i}
	h_b = check(user,answer)
	if h_b[0] == 3
		p "You win!"
		break
	else
		p "hit:#{h_b[0]} blow:#{h_b[1]}"
	end
}