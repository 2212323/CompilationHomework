
target triple = "armv7-unknown-linux-gnueabihf"

@.str = private unnamed_addr constant [24 x i8] c"Sum: %d, Product: %.2f\0A\00", align 1
define dso_local i32 @add(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %5, %6
  ret i32 %7
}
define dso_local float @multiply(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fmul float %5, %6
  ret float %7
}
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  store i32 0, i32* %1, align 4
  %4 = call i32 @add(i32 noundef 3, i32 noundef 4)
  store i32 %4, i32* %2, align 4
  %5 = call float @multiply(float noundef 2.000000e+00, float noundef 3.500000e+00)
  store float %5, float* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load float, float* %3, align 4
  %8 = fpext float %7 to double
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i32 noundef %6, double noundef %8)
  ret i32 0
}
declare i32 @printf(i8* noundef, ...) #1
