% systemIdentification에서 구한 전달함수 입력 
numerator = [0.000695 2.789e-06 1.981e-07];
denominator = [1 0.01994 0.0009487 1.059e-05 1.93e-07];
ATF = tf(numerator, denominator);

% 등가 폐루프 시스템의 전달 함수로 계산
closed_loop_sys = feedback(ATF, +1);

% 결과 출력
disp('Closed-Loop Transfer Function:');
closed_loop_sys
