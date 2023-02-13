function status = isprefc(PrefType, prefName)

[filepath] = predirc(PrefType);

D = matfile(filepath);
savedPrefs = fieldnames(D);

if ismember(savedPrefs, prefName) > 0
    status = true;
else
    status = false;
end

end