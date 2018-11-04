function swingDifference(data)

    %Athugum hvort mappan sem myndinar eiga að fara í eru til
    if ~exist('myndir/swingDifference', 'dir')
        %Búum til möppuna sem myndinar fara í 
        mkdir('myndir/swingDifference');
    end
    
    %For loopa fyrir hvert data set, getum hoppað yfir 2 í einu
    %vegna þess að oddatala er með open og jafntölur eru með closed
    for i=1:2:length(data)-1
        figure

        %Setjum upp 1x2 graph, plottum gögnum frá data(i) sem er open
        %úrslit og data(i+1) sem eru closed úrslit
        subplot(1,2,1);
        plot(data{i,1}(:,2),data{i,1}(:,3), ".");
        hold on;
        title("Opin augu");     
        xlabel('Medial/lateral [Nm]'); 
        ylabel('Anterior/posterior [Nm]');
        axis([-40 40 -80 80]);

        subplot(1,2,2);
        plot(data{i+1,1}(:,2),data{i+1,1}(:,3), ".");
        hold on;
        title("Lokuð augu");
        xlabel('Medial/lateral [Nm]');
        ylabel('Anterior/posterior [Nm]');
        axis([-40 40 -80 80]);

        %Búum til staðsetningu fyrir myndina og vistum þar
        path = '/myndir/swingDifference/' + string(data{i,2}(1)) + '.png';
        saveas(gcf, [pwd + path]);
        
        %Lokum öllum myndum
        close all;
    end
end

%y -70 80 x -40 30
