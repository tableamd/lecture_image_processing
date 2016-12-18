課題8のプログラムは同じ連結成分に属する画素に同一番号を，異なる連結成分に異なる番号を与える処理を行い，これをラベリングという．MATLABではbwlabeln関数を用いる事で行える．

元のプログラムでは二値化を行う際の閾値を128としていたが，今回はこの値の修正を行い220とした．この値は課題5の判別分析方で得られた閾値226に近い値である．

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai8/1.png">

図1 元画像(グレースケール化)

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai8/2.png">

図2 閾値220での二値化

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai8/3.png">

図3 ラベリング

図2の時点で，背景と被写体は綺麗に別れている事が確認できる．これをラベリングする事で図3の様に背景と被写体それぞれについてラベリングする事ができた．