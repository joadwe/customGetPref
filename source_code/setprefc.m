function setprefc(PrefType, prefName, prefValue)

[filepath] = predirc(PrefType);

D = matfile(filepath, 'Writable', true);
D.(prefName) = prefValue;

end