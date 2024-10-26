/// @description Insert description here
// You can write your code in this editor


function import_json(_file_name, _func) {
	if (!file_exists(_file_name)) {
		return undefined;
	}
	
	var _file, _json_string;
	_file = file_text_open_read(_file_name);
	_json_string = "";
	while (!file_text_eof(_file)) {
		_json_string += file_text_read_string(_file);
		file_text_readln(_file);
	}
		
	file_text_close(_file);
	return script_execute(_func, _json_string);
	
}

json_example_structs_arrays = import_json("json_sample_1.txt", json_parse);
show_debug_message(json_example_structs_arrays);