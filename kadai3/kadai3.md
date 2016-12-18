課題3のプログラムではある閾値以上の画素は白，それ以外は黒にするというプログラムである．つまり二値化を行うプログラムである．

実行結果を以下に示す．

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai3/1.png">

図1 元画像(グレースケール化)

IMG = ORG > 64;   

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai3/2.png">

図2 閾値=64の場合

IMG = ORG > 96;    

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai3/3.png">

図3 閾値=96の場合

IMG = ORG > 128;    

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai3/4.png">

図4 閾値=128の場合

IMG = ORG > 192;    

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai3/5.png">

図5 閾値=192の場合

図1と比較を行うと，図3と図4の時ある程度表情を確認する事ができる．図5に関しては表情の確認は難しいが，今回の画像の様な背景が一色のみである画像において人物と背景を切り分ける等の画像処理を行うならば図5を用いることが良いと考えられる．