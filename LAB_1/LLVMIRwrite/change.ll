target triple = "armv7-unknown-linux-gnueabihf"
@.str = private unnamed_addr constant [29 x i8] c"Result of int + float: %.2f\0A\00", align 1
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store i32 0, i32* %1, align 4
  store i32 10, i32* %2, align 4
  store float 2.500000e+00, float* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = sitofp i32 %5 to float
  %7 = load float, float* %3, align 4
  %8 = fadd float %6, %7
  store float %8, float* %4, align 4
  %9 = load float, float* %4, align 4
  %10 = fpext float %9 to double
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), double noundef %10)
  ret i32 0
}
declare i32 @printf(i8* noundef, ...) #1

