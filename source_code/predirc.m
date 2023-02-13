function [filepath] = predirc(PrefType)

% obtain username
username = char(java.lang.System.getProperty('user.name'));

% generate operating system specific filepath for preferences folder
if ismac()
    filepath = ['/Users/', username, '/Library/Application Support/',PrefType,'/', PrefType, '_Pref.',lower(PrefType)];
else
    filepath = ['C:\Users\', username, '\AppData\Local\',PrefType,'\', PrefType, '_Pref.',lower(PrefType)];
end


end