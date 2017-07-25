function result = createMatrix(mean_values)
    % For every mat file contained in the Misure_VarcoRFID folder
    file_names = dir('Misure_VarcoRFID/*.mat');
    result = [];
    
    % At first, dynamic samples
    for s = 1:length(file_names)
        file = (importdata(strcat('Misure_VarcoRFID/', file_names(s).name)));
        result = [result; normalizeInput(file.Inventario.Tag598BD.RSSITag, mean_values).'];
    end

    % Then, static samples
    for s = 1:length(file_names)
        file = (importdata(strcat('Misure_VarcoRFID/', file_names(s).name)));
        result = [result; normalizeInput(file.Inventario.Tag598B6.RSSITag, mean_values).'];
    end
end