課題9のプログラムでは画像にランダムなノイズを乗せ，それを各種フィルタを用いて取り除くという事を行っている．

ノイズというものは基本的に，特異な画素値を持ちその周りの画素値とは一線を画する．よってノイズを除去するにはノイズが発生している画素とその周辺の画素の画素値を変更する事で行う．

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai9/1.png">

図1 元画像(グレースケール化)

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai9/2.png">

図2 ノイズを乗せる

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai9/3.png">

図3 図2の画像に平滑化フィルタ適用後

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai9/4.png">

図4 図2の画像にメディアンフィルタ適用後

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai9/5.png">

図4 図2に自作のフィルタ適用後

まず図3であるが，これは平滑化フィルタを適用している．平滑化フィルタは例えばであるが以下のようなフィルタを用いて平滑化を行う．

|1/10|1/10|1/10|
|---|---|---|
|1/10|2/10|1/10|
|---|---|---|
|1/10|1/10|1/10|