function createCausalModel(model_directory, modelName, causeString, effect)
	model = struct();
	model = setfield(model, 'cause', causeString);
	model = setfield(model, 'predicates', effect);

	if isempty(modelName)
		model_path = tempname(model_directory);
	else
		model_path = [model_directory '/' modelName];
	end
	if isOctave
		save('-mat', [model_path '.mat'], 'model');
	else
		save(model_path, 'model');
	end
end
