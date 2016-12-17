今回課題1に用いた画像を図1に示す．

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/image/test.jpg" width="384">
図1 元画像(1920*1275 ディジタルカラー画像)

図1の画像を以下のコードで読み込む．

ORG=imread('image/test.jpg');
imagesc(ORG); axis image;

原画像を1/2サンプリングするには，画像を1/2倍に縮小した後，2倍に拡大すればよい．なお，拡大する際には，単純補間するために「box」オプションを設定する．

IMG = imresize(ORG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,2,'box'); % 画像の拡大

1/2サンプリングの結果を図2に示す．

![原画像](https://github.com/tableamd/lecture_image_processing/blob/master/kadai1/スクリーンショット%202016-11-07%2011.45.12.png?raw=true)
図2 1/2サンプリング

同様に原画像を1/4サンプリングするには，画像を1/2倍に縮小した後，2倍に拡大すればよい．すなわち，

IMG = imresize(ORG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,2,'box'); % 画像の拡大

とする．1/4サンプリングの結果を図３に示す．

![原画像](https://github.com/tableamd/lecture_image_processing/blob/master/kadai1/スクリーンショット%202016-11-07%2011.45.22.png?raw=true)  
図3 1/4サンプリング

1/8から1/32サンプリングは，

IMG = imresize(ORG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,2,'box'); % 画像の拡大

を繰り返す．サンプリングの結果を図４～６に示す．

![原画像](https://github.com/tableamd/lecture_image_processing/blob/master/kadai1/スクリーンショット%202016-11-07%2011.45.29.png?raw=true)  
図4 1/8サンプリング

![原画像](https://github.com/tableamd/lecture_image_processing/blob/master/kadai1/スクリーンショット%202016-11-07%2011.45.35.png?raw=true)  
図5 1/16サンプリング

![原画像](https://github.com/tableamd/lecture_image_processing/blob/master/kadai1/スクリーンショット%202016-11-07%2011.45.45.png?raw=true)  
図6 1/32サンプリング

このようにサンプリング幅が大きくなると，モザイク状のサンプリング歪みが発生する．