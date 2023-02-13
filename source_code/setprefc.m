function setprefc(PrefType, prefName, prefValue)

% obtain filepath for preference file
[filepath] = predirc(PrefType);

% check preference file exists, create directory if not
if ~isfile(filepath)
    mkdir(fileparts(filepath))
end

D = matfile(filepath, 'Writable', true);
D.(prefName) = prefValue;

end