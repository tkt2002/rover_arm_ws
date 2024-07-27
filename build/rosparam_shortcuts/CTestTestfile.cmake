# CMake generated Testfile for 
# Source directory: /home/thisum/my_ws/src/rosparam_shortcuts
# Build directory: /home/thisum/my_ws/build/rosparam_shortcuts
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test_node_parameters "/usr/bin/python3" "-u" "/opt/ros/humble/share/ament_cmake_test/cmake/run_test.py" "/home/thisum/my_ws/build/rosparam_shortcuts/test_results/rosparam_shortcuts/test_node_parameters.gtest.xml" "--package-name" "rosparam_shortcuts" "--output-file" "/home/thisum/my_ws/build/rosparam_shortcuts/ament_cmake_gtest/test_node_parameters.txt" "--command" "/home/thisum/my_ws/build/rosparam_shortcuts/test_node_parameters" "--gtest_output=xml:/home/thisum/my_ws/build/rosparam_shortcuts/test_results/rosparam_shortcuts/test_node_parameters.gtest.xml")
set_tests_properties(test_node_parameters PROPERTIES  LABELS "gtest" REQUIRED_FILES "/home/thisum/my_ws/build/rosparam_shortcuts/test_node_parameters" TIMEOUT "60" WORKING_DIRECTORY "/home/thisum/my_ws/build/rosparam_shortcuts" _BACKTRACE_TRIPLES "/opt/ros/humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/opt/ros/humble/share/ament_cmake_gtest/cmake/ament_add_gtest_test.cmake;86;ament_add_test;/opt/ros/humble/share/ament_cmake_gtest/cmake/ament_add_gtest.cmake;93;ament_add_gtest_test;/home/thisum/my_ws/src/rosparam_shortcuts/CMakeLists.txt;107;ament_add_gtest;/home/thisum/my_ws/src/rosparam_shortcuts/CMakeLists.txt;0;")
add_test(copyright "/usr/bin/python3" "-u" "/opt/ros/humble/share/ament_cmake_test/cmake/run_test.py" "/home/thisum/my_ws/build/rosparam_shortcuts/test_results/rosparam_shortcuts/copyright.xunit.xml" "--package-name" "rosparam_shortcuts" "--output-file" "/home/thisum/my_ws/build/rosparam_shortcuts/ament_copyright/copyright.txt" "--command" "/opt/ros/humble/bin/ament_copyright" "--xunit-file" "/home/thisum/my_ws/build/rosparam_shortcuts/test_results/rosparam_shortcuts/copyright.xunit.xml")
set_tests_properties(copyright PROPERTIES  LABELS "copyright;linter" TIMEOUT "200" WORKING_DIRECTORY "/home/thisum/my_ws/src/rosparam_shortcuts" _BACKTRACE_TRIPLES "/opt/ros/humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/opt/ros/humble/share/ament_cmake_copyright/cmake/ament_copyright.cmake;51;ament_add_test;/opt/ros/humble/share/ament_cmake_copyright/cmake/ament_cmake_copyright_lint_hook.cmake;22;ament_copyright;/opt/ros/humble/share/ament_cmake_copyright/cmake/ament_cmake_copyright_lint_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/thisum/my_ws/src/rosparam_shortcuts/CMakeLists.txt;112;ament_package;/home/thisum/my_ws/src/rosparam_shortcuts/CMakeLists.txt;0;")
add_test(lint_cmake "/usr/bin/python3" "-u" "/opt/ros/humble/share/ament_cmake_test/cmake/run_test.py" "/home/thisum/my_ws/build/rosparam_shortcuts/test_results/rosparam_shortcuts/lint_cmake.xunit.xml" "--package-name" "rosparam_shortcuts" "--output-file" "/home/thisum/my_ws/build/rosparam_shortcuts/ament_lint_cmake/lint_cmake.txt" "--command" "/opt/ros/humble/bin/ament_lint_cmake" "--xunit-file" "/home/thisum/my_ws/build/rosparam_shortcuts/test_results/rosparam_shortcuts/lint_cmake.xunit.xml")
set_tests_properties(lint_cmake PROPERTIES  LABELS "lint_cmake;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/thisum/my_ws/src/rosparam_shortcuts" _BACKTRACE_TRIPLES "/opt/ros/humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/opt/ros/humble/share/ament_cmake_lint_cmake/cmake/ament_lint_cmake.cmake;47;ament_add_test;/opt/ros/humble/share/ament_cmake_lint_cmake/cmake/ament_cmake_lint_cmake_lint_hook.cmake;21;ament_lint_cmake;/opt/ros/humble/share/ament_cmake_lint_cmake/cmake/ament_cmake_lint_cmake_lint_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/thisum/my_ws/src/rosparam_shortcuts/CMakeLists.txt;112;ament_package;/home/thisum/my_ws/src/rosparam_shortcuts/CMakeLists.txt;0;")
add_test(pep257 "/usr/bin/python3" "-u" "/opt/ros/humble/share/ament_cmake_test/cmake/run_test.py" "/home/thisum/my_ws/build/rosparam_shortcuts/test_results/rosparam_shortcuts/pep257.xunit.xml" "--package-name" "rosparam_shortcuts" "--output-file" "/home/thisum/my_ws/build/rosparam_shortcuts/ament_pep257/pep257.txt" "--command" "/opt/ros/humble/bin/ament_pep257" "--xunit-file" "/home/thisum/my_ws/build/rosparam_shortcuts/test_results/rosparam_shortcuts/pep257.xunit.xml")
set_tests_properties(pep257 PROPERTIES  LABELS "pep257;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/thisum/my_ws/src/rosparam_shortcuts" _BACKTRACE_TRIPLES "/opt/ros/humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/opt/ros/humble/share/ament_cmake_pep257/cmake/ament_pep257.cmake;41;ament_add_test;/opt/ros/humble/share/ament_cmake_pep257/cmake/ament_cmake_pep257_lint_hook.cmake;18;ament_pep257;/opt/ros/humble/share/ament_cmake_pep257/cmake/ament_cmake_pep257_lint_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/thisum/my_ws/src/rosparam_shortcuts/CMakeLists.txt;112;ament_package;/home/thisum/my_ws/src/rosparam_shortcuts/CMakeLists.txt;0;")
add_test(xmllint "/usr/bin/python3" "-u" "/opt/ros/humble/share/ament_cmake_test/cmake/run_test.py" "/home/thisum/my_ws/build/rosparam_shortcuts/test_results/rosparam_shortcuts/xmllint.xunit.xml" "--package-name" "rosparam_shortcuts" "--output-file" "/home/thisum/my_ws/build/rosparam_shortcuts/ament_xmllint/xmllint.txt" "--command" "/opt/ros/humble/bin/ament_xmllint" "--xunit-file" "/home/thisum/my_ws/build/rosparam_shortcuts/test_results/rosparam_shortcuts/xmllint.xunit.xml")
set_tests_properties(xmllint PROPERTIES  LABELS "xmllint;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/thisum/my_ws/src/rosparam_shortcuts" _BACKTRACE_TRIPLES "/opt/ros/humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/opt/ros/humble/share/ament_cmake_xmllint/cmake/ament_xmllint.cmake;50;ament_add_test;/opt/ros/humble/share/ament_cmake_xmllint/cmake/ament_cmake_xmllint_lint_hook.cmake;18;ament_xmllint;/opt/ros/humble/share/ament_cmake_xmllint/cmake/ament_cmake_xmllint_lint_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/thisum/my_ws/src/rosparam_shortcuts/CMakeLists.txt;112;ament_package;/home/thisum/my_ws/src/rosparam_shortcuts/CMakeLists.txt;0;")
subdirs("gtest")
