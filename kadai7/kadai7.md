課題7のプログラムはダイナミックレンジの拡大を行い，画像の濃度変換を行うという物である．画像の最高濃度と最低濃度の差が小さい場合，コントラスの低い見難い画像となってしまい対象物の抽出・認識が難しくなってしまう為濃度変換を行う事によってこれを解消する事ができる．

ダイナミックレンジの拡大方法としては線形変換及び非線形変換があるが，人間の感覚特性(ウェーバー・フェヒナーの法則)を考えると非線形変換を用いた方が人間の目からは見易い画像を得ることができる．

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai7/1.png">

図1 元画像(グレースケール化)

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai7/2.png">

図2 図1のヒストグラム

ORG = double(ORG);    
mn = min(ORG(:)); % 濃度値の最小値を算出    
mx = max(ORG(:)); % 濃度値の最大値を算出    
ORG = (ORG-mn)/(mx-mn)*255;    

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai7/3.png">

図3 ダイナミックレンジ拡大後の画像

<img src="https://github.com/tableamd/lecture_image_processing/blob/master/kadai7/4.png">

図4 図3のヒストグラム

今回採用した画像は図2のヒストグラムを見ても分かる通り，明るい場所(背景など)，暗い場所(被写体)がはっきりしていた為ダイナミックレンジを拡大しても殆ど効果を得る事はできなかった．

なおプログラム中に  

ORG = uint8(ORG); % この行について考察せよ  

という箇所が存在するがこの前の行にて，一旦全画素の濃度値をdouble型に変換していた．double型に変換する事で精度の良い計算を行う事ができるが，MATLABではヒストグラムを作成する際にはint型に変換しなければいけない．よって上記の行をコメントアウトすると，ヒストグラムを得ることができなくなってしまう．