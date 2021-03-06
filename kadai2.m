% 課題２　階調数と疑似輪郭
% ２階調，４階調，８階調の画像を生成せよ．
% 下記はサンプルプログラムである．
% 課題作成にあたっては「Lenna」以外の画像を用いよ．

clear; % 変数のオールクリア

ORG=imread('http://2.bp.blogspot.com/-m_fmtn3qkTk/VUIJ1XtvNKI/AAAAAAAAtZ0/-hiyaRwjTRY/s800/microphone2_man.png'); % 原画像の入力
%ORG = imread('http://cdn.ruvr.ru/2012/07/20/1299230162/401px-Mona_Lisa.jpg');
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); axis image; % 画像の表示
pause; % 一時停止

% ２階調画像の生成
IMG = ORG>128;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% ４階調画像の生成
IMG0 = ORG>64;
IMG1 = ORG>128;
IMG2 = ORG>192;
IMG = IMG0 + IMG1 + IMG2;
imagesc(IMG); colormap(gray); colorbar;  axis image;

pause;

% ８階調については，各自検討してください．
% どういった画像には疑似輪郭が出るか、出ないか、他の効率の良い階調の増やし方
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

pause;
