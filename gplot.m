%res - result
% = gplot - function name, should be the same as file name
function gplot(data, x_label, y_label)
    figure;
    plot(data);
    grid on;
    xlim('auto');
    ylim('auto');
    xlabel(x_label);
    ylabel(y_label);
end