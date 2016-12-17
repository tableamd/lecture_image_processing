% ‰Û‘è‚Q@ŠK’²”‚Æ‹^Ž——ÖŠs
% ‚QŠK’²C‚SŠK’²C‚WŠK’²‚Ì‰æ‘œ‚ð¶¬‚¹‚æD
% ‰º‹L‚ÍƒTƒ“ƒvƒ‹ƒvƒƒOƒ‰ƒ€‚Å‚ ‚éD
% ‰Û‘èì¬‚É‚ ‚½‚Á‚Ä‚ÍuLennavˆÈŠO‚Ì‰æ‘œ‚ð—p‚¢‚æD

clear; % •Ï”‚ÌƒI[ƒ‹ƒNƒŠƒA

ORG=imread('http://2.bp.blogspot.com/-m_fmtn3qkTk/VUIJ1XtvNKI/AAAAAAAAtZ0/-hiyaRwjTRY/s800/microphone2_man.png'); % Œ´‰æ‘œ‚Ì“ü—Í
%ORG = imread('http://cdn.ruvr.ru/2012/07/20/1299230162/401px-Mona_Lisa.jpg');
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); axis image; % ‰æ‘œ‚Ì•\Ž¦
pause; % ˆêŽž’âŽ~

% ‚QŠK’²‰æ‘œ‚Ì¶¬
IMG = ORG>128;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% ‚SŠK’²‰æ‘œ‚Ì¶¬
IMG0 = ORG>64;
IMG1 = ORG>128;
IMG2 = ORG>192;
IMG = IMG0 + IMG1 + IMG2;
imagesc(IMG); colormap(gray); colorbar;  axis image;

pause;

% ‚WŠK’²‚É‚Â‚¢‚Ä‚ÍCŠeŽ©ŒŸ“¢‚µ‚Ä‚­‚¾‚³‚¢D
% ‚Ç‚¤‚¢‚Á‚½‰æ‘œ‚É‚Í‹^Ž——ÖŠs‚ªo‚é‚©Ao‚È‚¢‚©A‘¼‚ÌŒø—¦‚Ì—Ç‚¢ŠK’²‚Ì‘‚â‚µ•û
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
