function plotCute1(xLabel,yLabel,ax,plotTitle,plotLegend,showLegend)
%% PLOTCUTE1 takes 'x' and 'y' labels as input along with the axis, and 
% improves the plot with fixed settings        

hXLabel = xlabel(ax,xLabel,'FontSize',10);
hYLabel = ylabel(ax,yLabel,'FontSize',10); 
hTitle = title(ax,plotTitle);

if showLegend
    hLegend = legend(plotLegend);
    set(hLegend,...
        'FontName'   , 'Helvetica',...
        'FontSize'   , 10         );
end

set(gca                       , ...
    'FontName'   , 'Helvetica' );
set([hXLabel, hYLabel,hTitle], ...
    'FontName'   , 'Helvetica',...
    'FontSize'   , 10         );
set(ax, ...
  'Box'         , 'off'     , ...
  'TickDir'     , 'out'     , ...
  'TickLength'  , [.02 .02] , ...
  'XMinorTick'  , 'on'      , ...
  'YMinorTick'  , 'on'      , ...
  'YGrid'       , 'on'      , ...
  'XColor'      , [.3 .3 .3], ...
  'YColor'      , [.3 .3 .3], ...
  'LineWidth'   , 1         ); %'YTick'       , -0.008:0.002:0.008, ...
grid(ax,'on')
end