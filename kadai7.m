% �ۑ�7�@�_�C�i�~�b�N�����W�̊g��
% ��f�̃_�C�i�~�b�N�����W���O����Q�T�T�ɂ���D 
% ���L�̓T���v���v���O�����ł���D 
% �ۑ�쐬�ɂ������ẮuLenna�v�ȊO�̉摜��p����D 
% ��
% �_�C�i�~�b�N�����W���g�傷�� 11��14���̓��e�H

ORG = imread('https://www.pakutaso.com/shared/img/thumb/00_PP15_PP_TP_V.jpg'); % �摜�̓ǂݍ���
ORG = rgb2gray(ORG); % �����Z�W�摜�ɕϊ�
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��
pause;
imhist(ORG); % �Z�x�q�X�g�O�����𐶐��A�\��
pause;
ORG = double(ORG);
mn = min(ORG(:)); % �Z�x�l�̍ŏ��l���Z�o
mx = max(ORG(:)); % �Z�x�l�̍ő�l���Z�o
ORG = (ORG-mn)/(mx-mn)*255;
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��
pause;
ORG = uint8(ORG); % ���̍s�ɂ��čl�@����
imhist(ORG); % �Z�x�q�X�g�O�����𐶐��A�\��