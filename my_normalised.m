function normalised_out = my_normalised(input_sig)

    normalised_out = input_sig ./ max(abs(input_sig));
end