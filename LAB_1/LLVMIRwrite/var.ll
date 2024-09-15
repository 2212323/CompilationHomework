target triple = "armv7-unknown-linux-gnueabihf"
@constVar = dso_local constant i32 100, align 4
@globalVar = dso_local global i32 50, align 4
@.str = private unnamed_addr constant [34 x i8] c"Const: %d, Global: %d, Local: %d\0A\00", align 1
define dso_local i32 @main() #0 {
  %1 = load i32, i32* @constVar, align 4
  %2 = load i32, i32* @globalVar, align 4
  %3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i32 noundef 100, i32 noundef %2, i32 noundef %1)
  ret i32 0
}
declare i32 @printf(i8* noundef, ...) #1
