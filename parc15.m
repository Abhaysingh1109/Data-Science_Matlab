Lombardia = [12:20 97 98];
n = size(citiesItaly2024, 1);
prov = strings(n, 1);
prov(Lombardia) = "Lombardia";
prov(setdiff(1:n, Lombardia)) = "Other provinces";
polarhistogramFS(citiesItaly2024(:, end-3:end), "nbins", 6, "groupvars", prov, "DisplayStyle", "stairs");