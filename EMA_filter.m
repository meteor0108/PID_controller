% 1. CSV 파일 읽기
data1 = readtable('D:\Miracle\2024_csv\2024-08-07-00-35-12-erp42_status_scale.csv');
data2 = readtable('D:\Miracle\2024_csv\2024-08-07-00-35-12-erp42_cmd.csv');
time = data1.Time;  % 'Time' 열 참조
values = data1.Value;  % 'Value' 열 참조

cmd_speed = data2.speed;

% 2. EMA 계산
alpha = 0.1;
ema_values = zeros(length(values), 1);
ema_values(1) = values(1);

for i = 2:length(values)
    ema_values(i) = alpha * values(i) + (1 - alpha) * ema_values(i-1);
end

% 3. 그래프 그리기
plot(time, values, 'b-', 'DisplayName', 'Original Data');
hold on;
plot(time, ema_values, 'r-', 'DisplayName', 'EMA Filtered Data');
hold on;
plot(time, cmd_speed, "g-", "DisplayName", 'cmd speed');
hold off;
xlabel('Time');
ylabel('Values');
title('Original Data and EMA Filtered Data');
legend show;
grid on;



%{
1.167e-05 s^5 + 1.189e-05 s^4 + 1.784e-07 s^3 + 1.95e-08 s^2 + 1.016e-10 s + 3.969e-12
                                                                             
  ---------------------------------------------------------------------------
                                                                             
  s^8 + 0.02887 s^7 + 0.0172 s^6 + 0.0004262 s^5 + 4.431e-05 s^4 + 6.725e-07  s^3 + 2.75e-08 s^2 + 2.436e-10s + 3.898e-12 
%}

num = [1.167e-05 1.189e-05 1.784e-07 1.95e-08 1.016e-10 3.969e-12];       % 전달 함수의 분자 계수
den = [1 0.02887 0.0172 0.0004262 4.431e-05 6.725e-07 2.75e-08 2.436e-10 3.898e-12]; % 전달 함수의 분모 계수


num2 = [-0.0018 8.6266e-04 9.3303e-06 1.4571e-06 6.6342e-09 3.0182e-10];
den2 = [1 0.0254 0.0031 4.6046e-05 2.0015e-06 1.7525e-08 2.9611e-10];

                                                                             