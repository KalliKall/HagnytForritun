function drawGraphs(data)


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

if ~exist('myndir/results', 'dir')
    mkdir('myndir/results')
end

for i = 1:2:length(data)-1

figure
    
    subplot(3,2,1);
    plot(data{end, 1}(qsStart:qsEnd,1), data{end, 1}(qsStart:qsEnd,2), 'm');
    hold on
    plot(data{end, 1}(q1Start:q1End,1), data{end, 1}(q1Start:q1End,2), 'r');
    hold on
    plot(data{end, 1}(q2Start:q2End,1), data{end, 1}(q2Start:q2End,2), 'g');
    hold on
    plot(data{end, 1}(q3Start:q3End,1), data{end, 1}(q3Start:q3End,2), 'b');
    hold on
    plot(data{end, 1}(q4Start:q4End,1), data{end, 1}(q4Start:q4End, 2), 'k');
    hold on
    title('Stimuli', 'FontSize',9);
    axis([0 330 -0.5 1.5]);
    xticks(0:50:330);
    yticks([]);
    daspect([1 0.03 1]);


    subplot(3,2,2);
    plot(data{end, 1}(qsStart:qsEnd,1), data{end, 1}(qsStart:qsEnd,2), 'm');
    hold on
    plot(data{end, 1}(q1Start:q1End,1), data{end, 1}(q1Start:q1End,2), 'r');
    hold on
    plot(data{end, 1}(q2Start:q2End,1), data{end, 1}(q2Start:q2End,2), 'g');
    hold on
    plot(data{end, 1}(q3Start:q3End,1), data{end, 1}(q3Start:q3End,2), 'b');
    hold on
    plot(data{end, 1}(q4Start:q4End,1), data{end, 1}(q4Start:q4End, 2), 'k');
    hold on
    title('Stimulli', 'FontSize',9);
    axis([0 330 -0.5 1.5]);
    xticks(0:50:330);
    yticks([]);
    daspect([1 0.03 1]);

    subplot(3,2,3);
    plot(data{i+1, 1}(qsStart:qsEnd,1), data{i+1, 1}(qsStart:qsEnd,2), 'm');
    hold on
    plot(data{i+1, 1}(q1Start:q1End,1), data{i+1, 1}(q1Start:q1End,2), 'r');
    hold on
    plot(data{i+1, 1}(q2Start:q2End,1), data{i+1, 1}(q2Start:q2End,2), 'g');
    hold on
    plot(data{i+1, 1}(q3Start:q3End,1), data{i+1, 1}(q3Start:q3End,2), 'b');
    hold on
    plot(data{i+1, 1}(q4Start:q4End,1), data{i+1, 1}(q4Start:q4End, 2), 'k');
    hold on
    title('Opin augu: Medial/Lateral v�gi', 'FontSize',9);
    axis([0 330 -40 40]);
    xticks(0:50:330);
    ylabel('Torque [Nm]', 'FontSize',9)

    subplot(3,2,5);
    plot(data{i+1, 1}(qsStart:qsEnd,1), data{i+1, 1}(qsStart:qsEnd,3), 'm');
    hold on
    plot(data{i+1, 1}(q1Start:q1End,1), data{i+1, 1}(q1Start:q1End,3), 'r');
    hold on
    plot(data{i+1, 1}(q2Start:q2End,1), data{i+1, 1}(q2Start:q2End,3), 'g');
    hold on
    plot(data{i+1, 1}(q3Start:q3End,1), data{i+1, 1}(q3Start:q3End,3), 'b');
    hold on
    plot(data{i+1, 1}(q4Start:q4End,1), data{i+1, 1}(q4Start:q4End, 3), 'k');
    hold on
    title('Opin augu: Medial/Lateral v�gi', 'FontSize',9);
    axis([0 330 -40 40]);
    xticks(0:50:330);
    xlabel('T�mi[s]', 'FontSize',9)
    ylabel('Torque[Nm]', 'FontSize',9)

    subplot(3,2,4);
    plot(data{i, 1}(qsStart:qsEnd,1), data{i, 1}(qsStart:qsEnd,2), 'm');
    hold on
    plot(data{i, 1}(q1Start:q1End,1), data{i, 1}(q1Start:q1End,2), 'r');
    hold on
    plot(data{i, 1}(q2Start:q2End,1), data{i, 1}(q2Start:q2End,2), 'g');
    hold on
    plot(data{i, 1}(q3Start:q3End,1), data{i, 1}(q3Start:q3End,2), 'b');
    hold on
    plot(data{i, 1}(q4Start:q4End,1), data{i, 1}(q4Start:q4End, 2), 'k');
    hold on
    title('Loku� augu: Medial/Lateral v�gi', 'FontSize',7);
    axis([0 330 -40 40]);
    xticks(0:50:330);
    ylabel('Torque [Nm]', 'FontSize',9)

    subplot(3,2,6);
    plot(data{i, 1}(qsStart:qsEnd,1), data{i, 1}(qsStart:qsEnd,3), 'm');
    hold on
    plot(data{i, 1}(q1Start:q1End,1), data{i, 1}(q1Start:q1End,3), 'r');
    hold on
    plot(data{i, 1}(q2Start:q2End,1), data{i, 1}(q2Start:q2End,3), 'g');
    hold on
    plot(data{i, 1}(q3Start:q3End,1), data{i, 1}(q3Start:q3End,3), 'b');
    hold on
    plot(data{i, 1}(q4Start:q4End,1), data{i, 1}(q4Start:q4End, 3), 'k');
    hold on
    title('Loku� augu: Medial/Lateral v�gi', 'FontSize',9);
    axis([0 330 -40 40]);
    xticks(0:50:330);
    xlabel('T�mi [s]', 'FontSize',9)
    ylabel('Torque [Nm]', 'FontSize',9)

    path = '/myndir/results/' + string(data{i,2}(1)) + '.png';

    saveas(gcf, [pwd + path]);
    
    close all
end
