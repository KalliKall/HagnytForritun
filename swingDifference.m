function swingDifference(data)

    if ~exist('myndir/swingDifference', 'dir')
        mkdir('myndir/swingDifference');
    end
    
    for i=1:2:length(data)-1
        figure

        subplot(1,2,1);
        plot(data{i,1}(:,2),data{i,1}(:,3), ".");
        hold on;
        title("Opin augu");            
        %axis([-20 20 -20 40]);
        xlabel('Medial/lateral [Nm]'); 
        ylabel('Anterior/posterior [Nm]');

        subplot(1,2,2);
        plot(data{i+1,1}(:,2),data{i+1,1}(:,3), ".");
        hold on;
        title("Lokuð augu");
        %axis([-20 20 -20 40]);
        xlabel('Medial/lateral [Nm]');
        ylabel('Anterior/posterior [Nm]');

        path = '/myndir/swingDifference/' + string(data{i,2}(1)) + '.png';
        saveas(gcf, [pwd + path]);
        
        close all;
    end
end

