# El2025Tasks - Embedded Linux Diploma Laboratory Exercises



This repository contains programming laboratory exercises for the Embedded Linux Diploma EL2025 program. Students will work on both Python and C++ programming challenges organized by sessions.

## 📋 Repository Structure

### 🐍 Python Labs
```
python/
├── session1/
│   ├── lab1_list_count.py          # Count occurrences in lists
│   ├── lab2_vowel_or_not.py        # Vowel checking functions
│   ├── lab3_access_env.py          # Environment variable access
│   ├── lab4_area_circle.py         # Circle area calculations
│   └── lab5_accumulator.py         # Accumulator patterns
├── session2/
│   ├── lab1_get_your_location.py   # Geolocation with APIs
│   ├── lab2_lists_problems.py      # Advanced list operations
│   ├── lab3_tuple_problems.py      # Tuple manipulation
│   └── lab4_set_problems.py        # Set operations and theory
└── session3/
    ├── lab1_dictionary_problems.py # Dictionary data structures
    ├── lab2_parse_file.py          # File parsing and processing
    └── template_data.txt           # Sample data for parsing
```

### ⚡ C++ Labs
```
cpp/
├── session1/
│   ├── lab1_ascii_print.cpp        # ASCII table generation
│   ├── lab2_max_three_numbers.cpp  # Maximum of three numbers
│   ├── lab3_right_triangle.cpp     # Triangle validation
│   ├── lab4_vowel_checker.cpp      # Character classification
│   └── lab5_digit_sum.cpp          # Digit sum calculations
├── session2/
│   ├── lab1_array_max.cpp          # Array maximum finding
│   ├── lab2_array_search.cpp       # Array searching algorithms
│   ├── lab3_array_delete.cpp       # Array element deletion
│   ├── lab4_array_merge.cpp        # Array merging operations
│   └── lab5_even_odd.cpp           # Even/odd number classification
└── session3/
    ├── lab1_all_even.cpp           # Check all elements are even
    ├── lab2_any_even.cpp           # Check any element is even
    └── lab3_string_class.cpp       # String class implementation
└── session4/
    ├── lab1_function_backtrace     # Backtrace
```

## 🚀 Getting Started

### Prerequisites
- **Python**: Version 3.8 or higher
- **C++**: GCC compiler with C++17 support
- **Git**: For version control
- **Code Editor**: VS Code recommended (settings included)

### 📥 Setting Up Your Workspace

1. **Fork the Repository** (Recommended for students)
   ```bash
   # Visit: https://github.com/Embedded-Linux-Diploma2025/El2025Tasks
   # Click "Fork" button to create your own copy
   ```

2. **Clone Your Fork**
   ```bash
   git clone https://github.com/YOUR_USERNAME/El2025Tasks.git
   cd El2025Tasks
   ```

3. **Set Up Environment**
   ```bash
   # Install Python dependencies
   pip install pylint requests

   # Verify C++ compiler
   g++ --version
   ```

## 🛠️ How to Work on Labs

### 📝 Basic Workflow

1. **Create a Feature Branch**
   ```bash
   git checkout -b session1/lab1-solution
   # or
   git checkout -b feature/my-lab-solutions
   ```

2. **Work on Labs**
   - Navigate to the specific lab file
   - Read the problem description in comments
   - Implement your solution in the designated function
   - Follow the existing code structure and style

3. **Test Your Solution**
   ```bash
   # For Python labs
   python python/session1/lab1_list_count.py

   # For C++ labs
   g++ -Wall -Wextra -std=c++17 cpp/session1/lab1_ascii_print.cpp -o lab1_ascii
   ./lab1_ascii
   ```

### 🧪 Testing and Validation

#### Automated Testing Scripts

**Run All Python Labs:**
```bash
chmod +x run_python.sh
./run_python.sh
```

**Run All C++ Labs:**
```bash
chmod +x run_cpp.sh
./run_cpp.sh
```

These scripts will:
- ✅ Compile all C++ files with proper flags
- ✅ Run all test cases
- ✅ Check Python code with pylint
- ✅ Validate code quality and functionality

#### Individual Lab Testing

**Python Example:**
```bash
# Test specific Python lab
cd python/session1
python lab1_list_count.py

# Check code quality
pylint lab1_list_count.py
```

**C++ Example:**
```bash
# Compile and test specific C++ lab
cd cpp/session1
g++ -Wall -Wextra -std=c++17 lab1_ascii_print.cpp -o lab1_ascii
./lab1_ascii
```

## 🤖 Continuous Integration (CI/CD)

This repository uses GitHub Actions for automated testing:

- **Python Workflow**: Tests against Python 3.8-3.13
- **C++ Workflow**: Compiles with GCC and runs all test cases

### 🎯 Monitoring Your Progress

1. **Check Pipeline Status**
   - Visit your fork's "Actions" tab
   - Monitor workflow runs for each push
   - Green ✅ = All tests pass
   - Red ❌ = Issues need fixing

2. **Understanding Test Failures**
   - Click on failed workflow runs
   - Review error logs
   - Fix issues and push again

## 🎯 Best Practices

### 💡 HINTS and Tips

1. **Read Carefully**: Understand the problem before coding
2. **Start Simple**: Begin with basic test cases
3. **Test Frequently**: Run tests after each significant change
4. **Use Debugging**: Add print statements to understand flow
5. **Follow Patterns**: Look at completed examples for guidance

### 🔍 Debugging Strategies

**Python:**
```python
# Add debug prints
print(f"Input: {input_value}")
print(f"Processing: {intermediate_result}")
print(f"Output: {final_result}")
```

**C++:**
```cpp
// Add debug output
std::cout << "Input: " << input_value << std::endl;
std::cout << "Processing: " << intermediate_result << std::endl;
std::cout << "Output: " << final_result << std::endl;
```

### 📋 Submission Workflow

1. **Complete Your Solution**
2. **Test Thoroughly**
   ```bash
   # Test individual lab
   python your_lab.py  # or compile and run C++

   # Run full test suite
   ./run_python.sh && ./run_cpp.sh
   ```

3. **Commit Your Changes**
   ```bash
   git add .
   git commit -m "feat: implement session1 lab1 solution"
   ```

4. **Push to Your Fork**
   ```bash
   git push origin your-branch-name
   ```

5. **Monitor CI Pipeline**
   - Check GitHub Actions in your fork
   - Ensure all tests pass
   - Fix any issues and repeat

## ⚠️ Important Notes

### 🚫 DO NOT:
- Modify test cases or assertions
- Change function signatures
- Commit compiled binaries (*.out, *.exe)
- Push to main branch directly

### ✅ DO:
- Work on feature branches
- Write clean, readable code
- Test your solutions thoroughly
- Follow coding standards
- Document your approach when complex

### 🔧 Troubleshooting

**Common Issues:**

1. **Python Import Errors**
   ```bash
   pip install --upgrade pip
   pip install pylint requests
   ```

2. **C++ Compilation Errors**
   ```bash
   # Check compiler version
   g++ --version

   # Install build tools (Ubuntu/Debian)
   sudo apt-get install build-essential
   ```

3. **Permission Denied on Scripts**
   ```bash
   chmod +x run_python.sh run_cpp.sh
   ```
