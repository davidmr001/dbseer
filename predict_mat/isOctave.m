function ret = isOctave
	% DY: Octave disabled for now..
	if exist('OCTAVE_VERSION')
		ret = 1;
	else
		ret = 0;
	end
end
