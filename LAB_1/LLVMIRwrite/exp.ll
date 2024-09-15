target triple = "armv7-unknown-linux-gnueabihf"

@.str = private unnamed_addr constant [22 x i8] c"Counter is positive.\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Counter: %d\0A\00", align 1

define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 5, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  br label %7

6:                                                 
  br label %7

7:                                                
  %8 = load i32, i32* %1, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                                
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef %8)
  %12 = add nsw i32 %8, -1
  store i32 %12, i32* %1, align 4
  br label %7

13:                                                
  ret i32 0
}

declare i32 @printf(i8* noundef, ...) #1
