#!/usr/bin/env bash
# Simple smoke test for the HealthConnect static app.
# Checks that the required pages/sections exist and contain expected content.
set -e

echo "Running HealthConnect smoke tests..."

test -f index.html || { echo "FAIL: index.html not found"; exit 1; }
echo "PASS: index.html exists"

grep -q "HealthConnect" index.html || { echo "FAIL: title missing"; exit 1; }
echo "PASS: title present"

grep -q "Find a Doctor" index.html || { echo "FAIL: doctor search section missing"; exit 1; }
echo "PASS: doctor search section present"

grep -q "My Appointments" index.html || { echo "FAIL: appointments section missing"; exit 1; }
echo "PASS: appointments section present"

grep -q "Medical History" index.html || { echo "FAIL: medical history section missing"; exit 1; }
echo "PASS: medical history section present"

echo "All smoke tests passed."
