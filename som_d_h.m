% In/out/pass Self-Organizing Map for horizontal samples

function result = som_d_h(input)
    %% Checking input dimension
    if size(input, 1) ~= 1
        error('Wrong input row size');
    elseif size(input, 2) ~= 30
        error('Wrong input column size');    
    end

    %% Input computation
    global som_net_2 som_2_clusters;
    som_d_h_output = som_2_clusters(find(som_net_2(input.')), 1);
    result = som_d_h_output;
    
    if som_d_h_output == 1
        disp('The given input belongs to the first cluster.');
    elseif som_d_h_output == 2
        disp('The given input belongs to the second cluster.');
    elseif som_d_h_output == 3
        disp('The given input belongs to the third cluster.');
    else
        disp('The given input does not belong to any cluster.');
    end
end