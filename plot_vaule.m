% 1. CSV 파일 읽기
data1 = readtable('D:\Miracle\2024_csv\2024-08-07-00-35-12-erp42_cmd.csv');
data2 = readtable('D:\Miracle\2024_csv\2024-08-07-00-35-12-erp42_status.csv');
data3 = readtable('D:\Miracle\2024_csv\2024-08-07-00-39-00-erp42_status.csv');
data4 = readtable('D:\Miracle\2024_csv\2024-08-07-00-42-13-erp42_status.csv');
data5 = readtable('D:\Miracle\2024_csv\2024-08-07-00-45-42-erp42_status.csv');

time = data1.time;  % 'Time' 열 참조
% 'Value' 열 참조
values2 = data2.Value;
values3 = data3.Value;
values4 = data4.Value;
values5 = data5.Value;

cmd_speed = data1.speed;


% 3. 그래프 그리기

plot(time, cmd_speed, "r-", "DisplayName", 'cmd speed');
hold on;
plot(time, values2, 'g-', 'DisplayName', 'Data1');
plot(time, values3, 'b-', 'DisplayName', 'Data2');
plot(time, values4, 'c-', 'DisplayName', 'Data3');
plot(time, values5, 'm-', 'DisplayName', 'Data4');
hold off;

xlabel('Time');
ylabel('Values');

legend show;
grid on;
