function status = isprefc(PrefType, varargin)

% obtain filepath for preference file
[filepath] = predirc(PrefType);

if (nargin) == 1
    status = isfile(filepath);
else
    % load preference file
    D = matfile(filepath);

    % obtain fieldnames
    savedPrefs = fieldnames(D);

    % check if specified preference exists in file structure
    if ismember(savedPrefs, prefName) > 0
        status = true;
    else
        status = false;
    end
end
end