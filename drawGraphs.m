function drawGraphs(data)

figure

qsStart = 1;
qsEnd = 1500;
q1Start = 1501;
q1End = 5250;
q2Start = 5251;
q2End = 9000;
q3Start = 9001;
q3End = 12750;
q4Start = 12751;
q4End = 16500;

subplot(3,2,1);
plot(data{end}(qsStart:qsEnd,1), data{end}(qsStart:qsEnd,2), 'm');
hold on
plot(data{end}(q1Start:q1End,1), data{end}(q1Start:q1End,2), 'r');
hold on
plot(data{end}(q2Start:q2End,1), data{end}(q2Start:q2End,2), 'g');
hold on
plot(data{end}(q3Start:q3End,1), data{end}(q3Start:q3End,2), 'b');
hold on
plot(data{end}(q4Start:q4End,1), data{end}(q4Start:q4End, 2), 'k');
hold on
title('Stimuli');
axis([0 350 -0.5 1.5]);
xticks(0:50:330);


subplot(3,2,2);
plot(data{end}(qsStart:qsEnd,1), data{end}(qsStart:qsEnd,2), 'm');
hold on
plot(data{end}(q1Start:q1End,1), data{end}(q1Start:q1End,2), 'r');
hold on
plot(data{end}(q2Start:q2End,1), data{end}(q2Start:q2End,2), 'g');
hold on
plot(data{end}(q3Start:q3End,1), data{end}(q3Start:q3End,2), 'b');
hold on
plot(data{end}(q4Start:q4End,1), data{end}(q4Start:q4End, 2), 'k');
hold on
title('Stimulli');
axis([0 350 -0.5 1.5]);
xticks(0:50:330)

subplot(3,2,3);
plot(data{2}(qsStart:qsEnd,1), data{2}(qsStart:qsEnd,2), 'm');
hold on
plot(data{2}(q1Start:q1End,1), data{2}(q1Start:q1End,2), 'r');
hold on
plot(data{2}(q2Start:q2End,1), data{2}(q2Start:q2End,2), 'g');
hold on
plot(data{2}(q3Start:q3End,1), data{2}(q3Start:q3End,2), 'b');
hold on
plot(data{2}(q4Start:q4End,1), data{2}(q4Start:q4End, 2), 'k');
hold on
title('Opin augu: Medial/Lateral vægi');
axis([0 350 -40 40]);
xticks(0:50:330)

subplot(3,2,5);
plot(data{2}(qsStart:qsEnd,1), data{2}(qsStart:qsEnd,3), 'm');
hold on
plot(data{2}(q1Start:q1End,1), data{2}(q1Start:q1End,3), 'r');
hold on
plot(data{2}(q2Start:q2End,1), data{2}(q2Start:q2End,3), 'g');
hold on
plot(data{2}(q3Start:q3End,1), data{2}(q3Start:q3End,3), 'b');
hold on
plot(data{2}(q4Start:q4End,1), data{2}(q4Start:q4End, 3), 'k');
hold on
title('Opin augu: Medial/Lateral vægi');
axis([0 350 -40 40]);
xticks(0:50:330)

subplot(3,2,4);
plot(data{1}(qsStart:qsEnd,1), data{1}(qsStart:qsEnd,2), 'm');
hold on
plot(data{1}(q1Start:q1End,1), data{1}(q1Start:q1End,2), 'r');
hold on
plot(data{1}(q2Start:q2End,1), data{1}(q2Start:q2End,2), 'g');
hold on
plot(data{1}(q3Start:q3End,1), data{1}(q3Start:q3End,2), 'b');
hold on
plot(data{1}(q4Start:q4End,1), data{1}(q4Start:q4End, 2), 'k');
hold on
title('Lokuð augu: Medial/Lateral vægi');
axis([0 350 -40 40]);
xticks(0:50:330)

subplot(3,2,6);
plot(data{1}(qsStart:qsEnd,1), data{1}(qsStart:qsEnd,3), 'm');
hold on
plot(data{1}(q1Start:q1End,1), data{1}(q1Start:q1End,3), 'r');
hold on
plot(data{1}(q2Start:q2End,1), data{1}(q2Start:q2End,3), 'g');
hold on
plot(data{1}(q3Start:q3End,1), data{1}(q3Start:q3End,3), 'b');
hold on
plot(data{1}(q4Start:q4End,1), data{1}(q4Start:q4End, 3), 'k');
hold on
title('Lokuð augu: Medial/Lateral vægi');
axis([0 350 -40 40]);
xticks(0:50:330)
