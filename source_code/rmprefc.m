function rmprefc(PrefType)

% obtain filepath for preference file
[filepath] = predirc(PrefType);

% delete preference file
delete(filepath)

end