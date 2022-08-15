.class public Lcom/android/server/display/BrightnessThrottler;
.super Ljava/lang/Object;
.source "BrightnessThrottler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BrightnessThrottler$Injector;,
        Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;
    }
.end annotation


# instance fields
.field public mBrightnessCap:F

.field public mBrightnessMaxReason:I

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/display/BrightnessThrottler$Injector;

.field public final mSkinThermalStatusObserver:Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;

.field public final mThrottlingChangeCallback:Ljava/lang/Runnable;

.field public mThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

.field public mThrottlingStatus:I


# direct methods
.method public static synthetic $r8$lambda$swaJkoxS5CEKG3PInbI0TthuAtg(Lcom/android/server/display/BrightnessThrottler;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessThrottler;->lambda$dump$0(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mthermalStatusChanged(Lcom/android/server/display/BrightnessThrottler;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessThrottler;->thermalStatusChanged(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Lcom/android/server/display/BrightnessThrottler$Injector;

    invoke-direct {v0}, Lcom/android/server/display/BrightnessThrottler$Injector;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/display/BrightnessThrottler;-><init>(Lcom/android/server/display/BrightnessThrottler$Injector;Landroid/os/Handler;Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/BrightnessThrottler$Injector;Landroid/os/Handler;Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    iput-object p1, p0, Lcom/android/server/display/BrightnessThrottler;->mInjector:Lcom/android/server/display/BrightnessThrottler$Injector;

    iput-object p2, p0, Lcom/android/server/display/BrightnessThrottler;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    iput-object p4, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingChangeCallback:Ljava/lang/Runnable;

    new-instance p3, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;-><init>(Lcom/android/server/display/BrightnessThrottler;Lcom/android/server/display/BrightnessThrottler$Injector;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/server/display/BrightnessThrottler;->mSkinThermalStatusObserver:Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;

    iget-object p1, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessThrottler;->resetThrottlingData(Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;)V

    return-void
.end method

.method private synthetic lambda$dump$0(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessThrottler;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method


# virtual methods
.method public deviceSupportsThrottling()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/BrightnessThrottler;Ljava/io/PrintWriter;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final dumpLocal(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "BrightnessThrottler:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mThrottlingData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mThrottlingStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessCap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessMaxReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    invoke-static {v1}, Landroid/hardware/display/BrightnessInfo;->briMaxReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/display/BrightnessThrottler;->mSkinThermalStatusObserver:Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getBrightnessCap()F
    .locals 0

    iget p0, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    return p0
.end method

.method public getBrightnessMaxReason()I
    .locals 0

    iget p0, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    return p0
.end method

.method public isThrottled()Z
    .locals 0

    iget p0, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetThrottlingData(Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessThrottler;->stop()V

    iput-object p1, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessThrottler;->deviceSupportsThrottling()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/display/BrightnessThrottler;->mSkinThermalStatusObserver:Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->startObserving()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler;->mSkinThermalStatusObserver:Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->stopObserving()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    return-void
.end method

.method public final thermalStatusChanged(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessThrottler;->updateThrottling()V

    :cond_0
    return-void
.end method

.method public final updateThrottling()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessThrottler;->deviceSupportsThrottling()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    iget-object v2, v2, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;->throttlingLevels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;

    iget v4, v3, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;->thermalStatus:I

    iget v5, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    if-gt v4, v5, :cond_1

    iget v0, v3, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;->brightness:F

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    if-eq v2, v1, :cond_3

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/display/BrightnessThrottler;->verifyAndConstrainBrightnessCap(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    iput v1, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    iget-object p0, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingChangeCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method public final verifyAndConstrainBrightnessCap(F)F
    .locals 3

    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    const-string v1, "brightness "

    const-string v2, "BrightnessThrottler"

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " is lower than the minimum possible brightness "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, p0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " is higher than the maximum possible brightness "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, p0

    :cond_1
    return p1
.end method
