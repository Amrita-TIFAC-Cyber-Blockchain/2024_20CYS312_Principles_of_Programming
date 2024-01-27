-- Reads of class name and code from user and call the other functions
main = do
    nameClass <- getLine
    codeClass <- getLine

    classInfo <- classInfoFun nameClass codeClass
    let output = "{\n  " ++ classInfo ++ "\n}"
    putStrLn output

-- adds the classname to json
classNameFun name = "    \"className\": " ++ name ++ ",\n"

--adds the classcode to json
classCodeFun code = "    \"classCode\": " ++ code ++ ",\n"


-- calls the classNameFun, classCodeFun and facultyFun
classInfoFun nameClass codeClass = do
    facultyDetails <- facultyFun
    let classInfo = "\"classInfo\": {\n" ++ classNameFun nameClass ++  classCodeFun codeClass ++ facultyDetails ++ "\n  }"
    return classInfo

-- reads the faculty name and returns the details
getFacultyInfo = do
    facultyName <- getLine
    facultyRole <- getLine
    let faculty = "      {\n\t\"facultyName\": \"" ++ facultyName ++ "\",\n\t\"role\": \"" ++ facultyRole ++ "\"\n      },\n"
    return faculty

-- calls the getFacultyInfo function 3 times and adds to the json
facultyFun = do
    facultyInfo1 <- getFacultyInfo
    facultyInfo2 <- getFacultyInfo
    facultyInfo3 <- getFacultyInfo
    let facultyString = "    \"faculty\": [\n" ++ facultyInfo1 ++ facultyInfo2 ++ facultyInfo3 ++ "\n    ]"
    return facultyString


