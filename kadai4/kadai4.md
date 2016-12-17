課題4のプログラムは画像のヒストグラムを表示するプログラムである．実行結果を以下に示す．

ちなみにMATLABでは

imhist(ORG);

こうすることでヒストグラムを表示することができる．	

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai4/1.png">

図1 元画像(グレースケール化)

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai4/2.png">

図2 図1の画像のヒストグラム

図2を確認すると，今回採用した画像はかなり明るい画像である事が分かる．事実，画像の背景は白であり男性が紙を持っている為さらに白い空間が存在する．こうした事から図2の様なヒストグラムを得られる事ができたと考えられる．