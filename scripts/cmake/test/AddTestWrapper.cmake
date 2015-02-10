string(REPLACE " " ";" WRAPPER_COMMAND ${WRAPPER_COMMAND})
execute_process(
	COMMAND ${WRAPPER_COMMAND} ${EXECUTABLE} ${EXECUTABLE_ARGS}
	WORKING_DIRECTORY ${case_path}
	RESULT_VARIABLE EXIT_CODE
)

if(NOT EXIT_CODE STREQUAL "0")
	message(FATAL_ERROR "Test wrapper exited with code: ${EXIT_CODE}")
endif()
