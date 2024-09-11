target triple = "armv7-unknown-linux-gnueabihf"
@__const.main.array = private unnamed_addr constant [2 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 3], [3 x i32] [i32 4, i32 5, i32 6]], align 4
@.str = private unnamed_addr constant [22 x i8] c"int: %d, float: %.2f\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Array element: %d\0A\00", align 1
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca [2 x [3 x i32]], align 4
  store i32 0, i32* %1, align 4
  store i32 42, i32* %2, align 4
  store float 0x40091EB860000000, float* %3, align 4
  %5 = bitcast [2 x [3 x i32]]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %5, i8* align 4 bitcast ([2 x [3 x i32]]* @__const.main.array to i8*), i32 24, i1 false)
  %6 = load i32, i32* %2, align 4
  %7 = load float, float* %3, align 4
  %8 = fpext float %7 to double
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 noundef %6, double noundef %8)
  %10 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %4, i32 0, i32 1
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 noundef %12)
  ret i32 0
}
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1
declare i32 @printf(i8* noundef, ...) #2
