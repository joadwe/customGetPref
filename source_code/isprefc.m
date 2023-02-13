function status = isprefc(PrefType, prefName)

% obtain filepath for preference file
[filepath] = predirc(PrefType);

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