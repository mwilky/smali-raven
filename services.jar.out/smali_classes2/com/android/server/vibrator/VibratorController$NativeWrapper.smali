.class public Lcom/android/server/vibrator/VibratorController$NativeWrapper;
.super Ljava/lang/Object;
.source "VibratorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeWrapper"
.end annotation


# instance fields
.field private mNativePtr:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    return-void
.end method

.method private static native alwaysOnDisable(JJ)V
.end method

.method private static native alwaysOnEnable(JJJJ)V
.end method

.method private static native getInfo(JFLandroid/os/VibratorInfo$Builder;)Z
.end method

.method private static native getNativeFinalizer()J
.end method

.method private static native isAvailable(J)Z
.end method

.method private static native nativeInit(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)J
.end method

.method private static native off(J)V
.end method

.method private static native on(JJJ)J
.end method

.method private static native performComposedEffect(J[Landroid/os/vibrator/PrimitiveSegment;J)J
.end method

.method private static native performEffect(JJJJ)J
.end method

.method private static native performPwleEffect(J[Landroid/os/vibrator/RampSegment;IJ)J
.end method

.method private static native setAmplitude(JF)V
.end method

.method private static native setExternalControl(JZ)V
.end method


# virtual methods
.method public alwaysOnDisable(J)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnDisable(JJ)V

    return-void
.end method

.method public alwaysOnEnable(JJJ)V
    .locals 8

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnEnable(JJJJ)V

    return-void
.end method

.method public compose([Landroid/os/vibrator/PrimitiveSegment;J)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performComposedEffect(J[Landroid/os/vibrator/PrimitiveSegment;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public composePwle([Landroid/os/vibrator/RampSegment;IJ)J
    .locals 6

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performPwleEffect(J[Landroid/os/vibrator/RampSegment;IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInfo(FLandroid/os/VibratorInfo$Builder;)Z
    .locals 2

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getInfo(JFLandroid/os/VibratorInfo$Builder;)Z

    move-result v0

    return v0
.end method

.method public init(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)V
    .locals 5

    invoke-static {p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->nativeInit(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getNativeFinalizer()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-class v2, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v2, v0, v1}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-virtual {v2, p0, v3, v4}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public isAvailable()Z
    .locals 2

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->isAvailable(J)Z

    move-result v0

    return v0
.end method

.method public off()V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->off(J)V

    return-void
.end method

.method public on(JJ)J
    .locals 6

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->on(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public perform(JJJ)J
    .locals 8

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performEffect(JJJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public setAmplitude(F)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setAmplitude(JF)V

    return-void
.end method

.method public setExternalControl(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setExternalControl(JZ)V

    return-void
.end method
