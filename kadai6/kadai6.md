課題6のプログラムではディザ法を用いて画像の二値化を行う．

ディザ法では，予め定められたディザマトリックスTの値(閾値)との比較を行いその大小関係によって出力画像の濃淡地を決定する方法を用いている．閾値の決定方法には様々なものが存在するが，MATLABにて提供されているdither関数では，フロイドスタインバーグディザリングを採用しており，この方法では各ピクセルの量子化誤差をそれに隣接するピクセル群に拡散させるという方法を取っている．

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai6/1.png">

図1 元画像(グレースケール)

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai6/2.png">

図2 閾値128による二値化

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai6/3.png">

図3 ディザ法を用いた二値化

図2と図3を比較すると違いが顕著に現れていることが確認できる．図2では単純に閾値を一つしか用いていない為，二値化後は元画像の忠実な結果を得る事ができない．一方で図3では各画素について閾値が設定される為，図1に忠実な二値化画像を得る事ができる．