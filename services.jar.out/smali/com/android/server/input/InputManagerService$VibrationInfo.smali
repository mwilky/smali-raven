.class Lcom/android/server/input/InputManagerService$VibrationInfo;
.super Ljava/lang/Object;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VibrationInfo"
.end annotation


# instance fields
.field private final mAmplitudes:[I

.field private final mPattern:[J

.field private final mRepeat:I


# direct methods
.method constructor <init>(Landroid/os/VibrationEffect;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    instance-of v4, p1, Landroid/os/VibrationEffect$Composed;

    const-string v5, "InputManager"

    if-eqz v4, :cond_3

    move-object v4, p1

    check-cast v4, Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v4}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [J

    new-array v1, v6, [I

    invoke-virtual {v4}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v2

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_3

    invoke-virtual {v4}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v4}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v9

    if-ne v9, v7, :cond_0

    move v2, v3

    :cond_0
    instance-of v9, v8, Landroid/os/vibrator/StepSegment;

    if-nez v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Input devices don\'t support segment "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_2

    :cond_1
    move-object v9, v8

    check-cast v9, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v9}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v9

    const/high16 v10, -0x40800000    # -1.0f

    invoke-static {v9, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-nez v10, :cond_2

    const/16 v10, 0xc0

    aput v10, v1, v3

    goto :goto_1

    :cond_2
    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v9

    float-to-int v10, v10

    aput v10, v1, v3

    :goto_1
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v8}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v11

    aput-wide v11, v0, v3

    add-int/lit8 v7, v7, 0x1

    move v3, v10

    goto :goto_0

    :cond_3
    :goto_2
    const/4 v4, 0x0

    if-gez v3, :cond_4

    const-string v6, "Only oneshot and step waveforms are supported on input devices"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array v5, v4, [J

    iput-object v5, p0, Lcom/android/server/input/InputManagerService$VibrationInfo;->mPattern:[J

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/server/input/InputManagerService$VibrationInfo;->mAmplitudes:[I

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/input/InputManagerService$VibrationInfo;->mRepeat:I

    goto :goto_3

    :cond_4
    iput v2, p0, Lcom/android/server/input/InputManagerService$VibrationInfo;->mRepeat:I

    new-array v5, v3, [J

    iput-object v5, p0, Lcom/android/server/input/InputManagerService$VibrationInfo;->mPattern:[J

    new-array v6, v3, [I

    iput-object v6, p0, Lcom/android/server/input/InputManagerService$VibrationInfo;->mAmplitudes:[I

    invoke-static {v0, v4, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v4, v6, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v5

    if-ge v2, v4, :cond_5

    :goto_3
    return-void

    :cond_5
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Repeat index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " must be within the bounds of the pattern.length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public getAmplitudes()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$VibrationInfo;->mAmplitudes:[I

    return-object v0
.end method

.method public getPattern()[J
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$VibrationInfo;->mPattern:[J

    return-object v0
.end method

.method public getRepeatIndex()I
    .locals 1

    iget v0, p0, Lcom/android/server/input/InputManagerService$VibrationInfo;->mRepeat:I

    return v0
.end method
