課題10のプログラムでは各種エッジ抽出アルゴリズムを用いて画像のエッジを抽出している．

エッジを検出する際には微分を用いる．これは基本的にどの様な画像も，エッジを境目にして輝度値が大幅に変わるという特徴を利用している．

プレウィット法では微分フィルタを用いてエッジの検出を行った画像に対して，縦方向または横方向に平均化処理を行っている．

ソベル法では微分フィルタを用いてエッジの検出を行った画像に対して，ガウシアン平滑化処理を行う．

一方で，キャニー法ではプレウィット法及びソベル法と比べて性能の良いエッジ抽出方法であり現在でも最先端の抽出方法である．

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai10/1.png">

図1 元画像(グレースケール化)

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai10/2.png">

図2 エッジ抽出(プレウィット法)

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai10/3.png">

図3 エッジ抽出(ソベル法)

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai10/4.png">

図4 エッジ抽出(キャニー法)

図2〜4を比較すると，プレウィット法及びソベル法を用いたエッジ抽出には殆ど違いが無いことが確認できるが図4の結果は他のエッジ抽出結果と比べて大幅に異なっていることが分かる．

図4は図2及び3と比較して，詳細にエッジの検出を行っている．