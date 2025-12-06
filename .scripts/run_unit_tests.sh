cat > scripts/run_unit_tests.sh << 'EOF'
#!/usr/bin/env bash
set -e

echo ">>> [run_unit_tests.sh] Running SDK unit tests"
if [ ! -x "./build/bin/sdk_utests" ]; then
  echo "ERROR: ./build/bin/sdk_utests not found or not executable. Did the build step succeed?"
  exit 1
fi

./build/bin/sdk_utests
EOF
