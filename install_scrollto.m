function install_scrollto(mode)
if nargin < 2, mode = 'install'; end
switch mode
    case 'install'
        install_();
    case 'uninstall'
        uninstall_();
end
end

function install_()
% Add and save path, excluding previously added but not saved paths
destination = fileparts(mfilename('fullpath'));
currentPath = path();

path(pathdef())
addpath(destination)
addpath(fullfile(destination,'findjobj'))
savepath

path(currentPath)
addpath(destination)
addpath(fullfile(destination,'findjobj'))

fprintf('Installation complete.\n')
end

function uninstall_()
% Remove path
destination = fileparts(mfilename('fullpath'));
rmpath(destination)
rmpath(fullfile(destination,'findjobj'))

fprintf('Disinstallation complete.\n')
end
