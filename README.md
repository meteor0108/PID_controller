1. 실험을 통해 얻은 여러 데이터들을 비교하여 유효성이 좋은 데이터를 추출함(plot_value.m)
2. EMA 필터를 사용하여 모델링을 위해 데이터의 노이즈를 제거함(EMA filter.m)
3. systemIdentification을 통해 전달함수를 구함
4. pid제어를 위한 폐루프 시스템 전달함수로 변환(closed_loop_sys.m)
5. 근궤적을 그려 전달함수 특성 파악
6. simulink의 폐루프 시스템에 pid controller를 통해 gain값을 조정하여 제어
