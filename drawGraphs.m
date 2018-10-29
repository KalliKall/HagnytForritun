function drawGraphs(data)

figure

subplot(3,2,1);
plot(data{end}(1:1500,1), data{end}(1:1500,2), 'm');
hold on
plot(data{end}(1501:5250,1), data{end}(1501:5250,2), 'r');
hold on
plot(data{end}(5251:9000,1), data{end}(5251:9000,2), 'g');
hold on
plot(data{end}(9001:12750,1), data{end}(9001:12750,2), 'b');
hold on
plot(data{end}(12751:16500,1), data{end}(12751:16500, 2), 'k');
hold on
title('Stimuli');
axis([0 350 -0.5 1.5]);
xticks(0:50:330);


subplot(3,2,2);
plot(data{end}(1:1500,1), data{end}(1:1500,2), 'm');
hold on
plot(data{end}(1501:5250,1), data{end}(1501:5250,2), 'r');
hold on
plot(data{end}(5251:9000,1), data{end}(5251:9000,2), 'g');
hold on
plot(data{end}(9001:12750,1), data{end}(9001:12750,2), 'b');
hold on
plot(data{end}(12751:16500,1), data{end}(12751:16500, 2), 'k');
hold on
title('Stimulli');
axis([0 350 -0.5 1.5]);
xticks(0:50:330)

subplot(3,2,3);
plot(data{2}(1:1500,1), data{1}(1:1500,2), 'm');
hold on
plot(data{2}(1501:5250,1), data{1}(1501:5250,2), 'r');
hold on
plot(data{2}(5251:9000,1), data{1}(5251:9000,2), 'g');
hold on
plot(data{2}(9001:12750,1), data{1}(9001:12750,2), 'b');
hold on
plot(data{2}(12751:16500,1), data{1}(12751:16500, 2), 'k');
hold on
title('Opin augu: Medial/Lateral vægi');
axis([0 350 -40 40]);
xticks(0:50:330)

subplot(3,2,5);
plot(data{2}(1:1500,1), data{1}(1:1500,3), 'm');
hold on
plot(data{2}(1501:5250,1), data{1}(1501:5250,3), 'r');
hold on
plot(data{2}(5251:9000,1), data{1}(5251:9000,3), 'g');
hold on
plot(data{2}(9001:12750,1), data{1}(9001:12750,3), 'b');
hold on
plot(data{2}(12751:16500,1), data{1}(12751:16500, 3), 'k');
hold on
title('Opin augu: Medial/Lateral vægi');
axis([0 350 -40 40]);
xticks(0:50:330)

subplot(3,2,4);
plot(data{1}(1:1500,1), data{1}(1:1500,2), 'm');
hold on
plot(data{1}(1501:5250,1), data{1}(1501:5250,2), 'r');
hold on
plot(data{1}(5251:9000,1), data{1}(5251:9000,2), 'g');
hold on
plot(data{1}(9001:12750,1), data{1}(9001:12750,2), 'b');
hold on
plot(data{1}(12751:16500,1), data{1}(12751:16500, 2), 'k');
hold on
title('Lokuð augu: Medial/Lateral vægi');
axis([0 350 -40 40]);
xticks(0:50:330)

subplot(3,2,6);
plot(data{1}(1:1500,1), data{1}(1:1500,3), 'm');
hold on
plot(data{1}(1501:5250,1), data{1}(1501:5250,3), 'r');
hold on
plot(data{1}(5251:9000,1), data{1}(5251:9000,3), 'g');
hold on
plot(data{1}(9001:12750,1), data{1}(9001:12750,3), 'b');
hold on
plot(data{1}(12751:16500,1), data{1}(12751:16500, 3), 'k');
hold on
title('Lokuð augu: Medial/Lateral vægi');
axis([0 350 -40 40]);
xticks(0:50:330)
