% Testing the ANFIS classifier
% for all possible vertical input samples

global v_samples;

for i = 1:size(v_samples, 1)
    ans = anfis_v(v_samples(i, :));
end
clear i ans;