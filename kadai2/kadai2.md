課題2のプログラムは画像を2階調化，4階調化，8階調化するプログラムである．

今回8階調化に関しては以下の様なプログラムを考えてみた．

IMG0 = ORG>16;
IMG1 = ORG>32;
IMG2 = ORG>64;
IMG3 = ORG>128;
IMG4 = ORG>140;
IMG5 = ORG>150;
IMG6 = ORG>160;
IMG7 = ORG>192;
IMG = IMG0+IMG1+IMG2+IMG3+IMG4+IMG5+IMG6+IMG7;
imagesc(IMG);colormap(gray);colorbar;axis image;

このプログラムではグレースケール化した画像の各画素について，閾値16，32，64，128，140，150，160，192よりも明るい画素を白，それ以外は黒にするという二値化を行いそれらを足し合わせる事を行っている．なお，2〜4階調においてはそれぞれ128，64・128・192を閾値に設定している．

まずは以下に階調後疑似輪郭が出てしまう場合についての画像を示す．

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai2/疑似輪郭あり/スクリーンショット%202016-11-07%2011.46.26.png">

図1 元画像(グレースケール化後)

<imsg src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai2/疑似輪郭あり/スクリーンショット%202016-11-07%2011.46.34.png">

図2 図1の画像の2階調化

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai2/疑似輪郭あり/スクリーンショット%202016-11-07%2011.46.43.png">

図3 図1の画像の4階調化

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai2/疑似輪郭あり/スクリーンショット%202016-11-07%2011.46.50.png">

図4 図1の画像の8階調化

元画像としては「モナリザ」を採用した．図2〜4を確認すると，階調が上がるほど疑似輪郭がボケていき境目が曖昧になっている事が確認できる．

続いては，疑似輪郭が発生しない場合について取り上げる．

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai2/疑似輪郭なし/スクリーンショット%202016-11-07%2011.47.44.png">

図5 元画像(グレースケール化後)

<imsg src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai2/疑似輪郭なし/スクリーンショット%202016-11-07%2011.47.51.png">

図6 図5の画像の2階調化

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai2/疑似輪郭なし/スクリーンショット%202016-11-07%2011.47.56.png">

図7 図5の画像の4階調化

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai2/疑似輪郭なし/スクリーンショット%202016-11-07%2011.48.02.png">

図8 図5の画像の8階調化
