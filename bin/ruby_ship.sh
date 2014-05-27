OS="unknown"
if [[ "$OSTYPE" == "linux-gnu" ]]; then
	OS="linux-gnu"
elif [[ "$OSTYPE" == "darwin"* ]]; then
	OS="darwin"
elif [[ "$OSTYPE" == "cygwin" ]]; then
	OS="cygwin"
elif [[ "$OSTYPE" == "win32" ]]; then
	OS="win32"
elif [[ "$OSTYPE" == "freebsd"* ]]; then
	OS="freebsd"
else
	echo "OS not compatible"
	exit 1
fi

./${OS}_ruby.sh "$@"