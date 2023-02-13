function prefValue = getprefc(PrefType, varargin)

[filepath] = predirc(PrefType);

% if second argument is included return specific keyword
if nargin == 2 
    D = matfile(filepath);
    prefValue = D.(varargin{1});
else % return entire preference structure arra
    prefValue = load(filepath,"-mat");
end

end