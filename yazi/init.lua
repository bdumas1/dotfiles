require("folder-rules"):setup()

function Linemode:size_and_mtime()
	local months = {
		"Jan",
		"Fév",
		"Mar",
		"Avr",
		"Mai",
		"Jun",
		"Jul",
		"Aoû",
		"Sep",
		"Oct",
		"Nov",
		"Déc",
	}

	local time = math.floor(self._file.cha.mtime or 0)
	local time_str = ""
	if time ~= 0 then
		local t = os.date("*t", time)
		time_str = string.format("%02d %s %d %02d:%02d:%02d", t.day, months[t.month], t.year, t.hour, t.min, t.sec)
	end

	local size = self._file:size()
	if size then
		local size_str = ya.readable_size(size)
		return string.format("%8s - %s", size_str, time_str)
	else
		return string.format("%8s   %s", "", time_str)
	end
end
