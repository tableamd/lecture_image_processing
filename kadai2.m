% �ۑ�Q�@�K�����Ƌ^���֊s
% �Q�K���C�S�K���C�W�K���̉摜�𐶐�����D
% ���L�̓T���v���v���O�����ł���D
% �ۑ�쐬�ɂ������ẮuLenna�v�ȊO�̉摜��p����D

clear; % �ϐ��̃I�[���N���A

ORG=imread('http://2.bp.blogspot.com/-m_fmtn3qkTk/VUIJ1XtvNKI/AAAAAAAAtZ0/-hiyaRwjTRY/s800/microphone2_man.png'); % ���摜�̓���
%ORG = imread('http://cdn.ruvr.ru/2012/07/20/1299230162/401px-Mona_Lisa.jpg');
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); axis image; % �摜�̕\��
pause; % �ꎞ��~

% �Q�K���摜�̐���
IMG = ORG>128;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% �S�K���摜�̐���
IMG0 = ORG>64;
IMG1 = ORG>128;
IMG2 = ORG>192;
IMG = IMG0 + IMG1 + IMG2;
imagesc(IMG); colormap(gray); colorbar;  axis image;

pause;

% �W�K���ɂ��ẮC�e���������Ă��������D
% �ǂ��������摜�ɂ͋^���֊s���o�邩�A�o�Ȃ����A���̌����̗ǂ��K���̑��₵��
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
