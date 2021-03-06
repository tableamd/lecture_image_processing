課題9のプログラムでは画像にランダムなノイズを乗せ，それを各種フィルタを用いて取り除くという事を行っている．

ノイズというものは基本的に，特異な画素値を持ちその周りの画素値とは一線を画する．よってノイズを除去するにはノイズが発生している画素とその周辺の画素の画素値を変更する事で行う．

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai9/1.png">

図1 元画像(グレースケール化)

ORG = imnoise(ORG,'salt & pepper',0.02); % ノイズ添付    

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai9/2.png">

図2 ノイズを乗せる

IMG = filter2(fspecial('average',3),ORG); % 平滑化フィルタで雑音除去    

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai9/3.png">

図3 図2の画像に平滑化フィルタ適用後

IMG = medfilt2(ORG,[3 3]); % メディアンフィルタで雑音除去   

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai9/4.png">

図4 図2の画像にメディアンフィルタ適用後

f=[0,-1,0;-1,5,-1;0,-1,0]; % フィルタの設計     
IMG = filter2(f,IMG,'same'); % フィルタの適用     

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai9/5.png">

図5 図2に自作のフィルタ適用後

まず図3であるが，これは平滑化フィルタを適用している．平滑化フィルタは例えばであるが以下のようなフィルタを用いて平滑化を行う．

|1/10|1/10|1/10|
|---|---|---|
|1/10|2/10|1/10|
|1/10|1/10|1/10|

着目する画素の濃度値をその周囲の画素の濃度値に重みを付けて加えることによって平滑化を行っている．なお，全ての重みを足し合わせると1になる事に注意する．これが1を超えると全体的に明るい画像になってしまう．

続いて図4であるが，これはメディアンフィルタを適用している．このフィルタでは変換後の濃度値を着目画素の近傍画素の濃度値の平均値とするのでは無く，それらの画素濃度の中央値とする方法であり，エッジをぼかすこと無くノイズの除去を行う事ができる．

最後の図5では以下のフィルタを用いている．

|0|-1|0|
|---|---|---|
|-1|5|-1|
|0|-1|0|

これに関しても平滑化フィルタと同様に重みを足すと1になっている事に注意する．

図3〜5を確認すると，メディアンフィルタを適用した結果が最もよくノイズの除去を行える事が確認できた．自作のフィルタを適用した図5では全体的に灰色がかってしまっている事が確認できる．