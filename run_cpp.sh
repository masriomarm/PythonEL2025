#!/bin/bash

examine_cpp_session() {
    local session_dir="$1"
    status="$2"
    cd "$session_dir" || exit 1
    
    echo "🔧 Compiling and testing C++ files in $session_dir..."
    lab1_file=$(find . -iname "lab1_*.cpp")
    filename="${lab1_file%.cpp}"
    g++ -Wall -Wextra -std=c++17  "$lab1_file" -o "$filename"
    if ! ./"$filename" ; then
        echo "[🟥] Error compiling $lab1_file"
        rm "$filename"
        cd ../..
        if [ "$status" == "SKIP" ]; then
            echo "[⚠️] Skipping further tests in $session_dir"
            return 1
        else 
            exit 1
        fi
    fi
    rm a.out
    for file in *.cpp; do
        if [ ! -f "$file" ]; then
            echo "⚠️  No .cpp files found in $session_dir"
            continue
        fi
        
        filename="${file%.cpp}"
        echo "📋 Processing $file..."
        echo "🔨 Compiling $file..."
        if !  g++ -Wall -Wextra -std=c++17 -o "$filename" "$file"; then
            echo "[🟥] Error compiling $file"
            rm  "$filename"
            cd ../..
            exit 1
        fi
        echo "[✅] $file compiled successfully"
        echo "🚀 Running $filename..."
        
        if ! ./"$filename" ; then
            echo "[🟥] Error running $filename"
            rm  "$filename"
            cd ../..
            exit 1
        fi
        echo "[🟩] $filename ran successfully"
        rm -f "$filename"
        echo ""
    done
    cd ../..
}

echo "==============================================";
echo "        C++ PROJECT TEST RUNNER";
echo "==============================================";
echo "";

#----------------- Session 1 -----------------#
echo "🎯 Testing C++ Session 1..."
examine_cpp_session "cpp/session1" MUST

#----------------- Session 2 -----------------#
echo "🎯 Testing C++ Session 2..."
examine_cpp_session "cpp/session2" MUST

#----------------- Session 3 -----------------#
echo "🎯 Testing C++ Session 3..."
examine_cpp_session "cpp/session3" SKIP

#----------------- Session 4 -----------------#
echo "🎯 Testing C++ Session 4..."
examine_cpp_session "cpp/session4" MUST

echo "==============================================";
echo "[🎉] All C++ tests completed successfully!";
echo "==============================================";
