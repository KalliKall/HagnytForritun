function stimuliData(data)

%B�a til breytur �t fr� l�singunni
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

%T�kkum hvort m�ppur sem vi� �tlum a� save-a myndirnar � eru til annars
%b�um vi� ��r til
if ~exist('myndir/stimuliData', 'dir')
    mkdir('myndir/stimuliData')
end

%For loopa fyrir hvert data set hoppa� yfir 2 � einu vegna �ess a� oddatala
%er me� opin augu og sl�ttar t�lur fyrir loku� augu
for i = 1:2:length(data)-1

    figure
    
    %Teikna� upp stimuli graph
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

    %Teikna� upp stimuli graph 2
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
    
    %Teikna� upp graph fyrir opin augu Medial/Lateral v�gi
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
    
    %Teikna� upp graph fyrir opin augu Aterior/Posterior v�gi
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
    title('Opin augu: Aterior/Posterior v�gi', 'FontSize',9);
    axis([0 330 -40 40]);
    xticks(0:50:330);
    xlabel('T�mi[s]', 'FontSize',9)
    ylabel('Torque[Nm]', 'FontSize',9)

    %Teikna� upp graph fyrir loku� augu Medial/Lateral v�gi
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
    
    %Teikna� upp graph fyrir loku� augu Aterior/Posterior v�gi
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
    title('Loku� augu: Aterior/Posterior', 'FontSize',9);
    axis([0 330 -40 40]);
    xticks(0:50:330);
    xlabel('T�mi [s]', 'FontSize',9)
    ylabel('Torque [Nm]', 'FontSize',9)
    
    %b�um til breytu sem heldur utan um sl��ina �ar sem vi� �tlum a� save-a
    %myndirnar
    path = '/myndir/stimuliData/' + string(data{i,2}(1)) + '.png';
    
    %save-um myndirnar
    saveas(gcf, [pwd + path]);
    
    close all
end
