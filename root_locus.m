% 전달 함수의 분자와 분모 계수 정의
num= [0.000695 2.789e-06 1.981e-07];
den= [1 0.01994 0.0009487 1.059e-05 1.93e-07];

% 전달 함수 생성
G = tf(num, den);

closed_loop_sys = feedback(G, -1);
% 근궤적 그리기
figure;
rlocus(closed_loop_sys);
grid on;
