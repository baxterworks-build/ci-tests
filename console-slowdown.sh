echo "Console slowdown test:"

echo "With output"
time (for i in {1..1000}; do echo console output $i; done)

echo "No output"
time (for i in {1..1000}; do echo console output $i; done) >/dev/null
