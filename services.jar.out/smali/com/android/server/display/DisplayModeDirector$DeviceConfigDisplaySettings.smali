.class Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceConfigDisplaySettings"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayModeDirector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getIntArrayProperty(Ljava/lang/String;)[I
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$2600(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/utils/DeviceConfigInterface;

    move-result-object v0

    const-string v1, "display_manager"

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/android/server/utils/DeviceConfigInterface;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->parseIntArray(Ljava/lang/String;)[I

    move-result-object v1

    return-object v1

    :cond_0
    return-object v2
.end method

.method private parseIntArray(Ljava/lang/String;)[I
    .locals 5

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incorrect format for array: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DisplayModeDirector"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method


# virtual methods
.method public getDefaultPeakRefreshRate()Ljava/lang/Float;
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$2600(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/utils/DeviceConfigInterface;

    move-result-object v0

    const-string v1, "display_manager"

    const-string/jumbo v2, "peak_refresh_rate_default"

    const/high16 v3, -0x40800000    # -1.0f

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/utils/DeviceConfigInterface;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    cmpl-float v1, v0, v3

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1
.end method

.method public getHighAmbientBrightnessThresholds()[I
    .locals 1

    const-string v0, "fixed_refresh_rate_high_ambient_brightness_thresholds"

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getIntArrayProperty(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getHighDisplayBrightnessThresholds()[I
    .locals 1

    const-string v0, "fixed_refresh_rate_high_display_brightness_thresholds"

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getIntArrayProperty(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getLowAmbientBrightnessThresholds()[I
    .locals 1

    const-string/jumbo v0, "peak_refresh_rate_ambient_thresholds"

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getIntArrayProperty(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getLowDisplayBrightnessThresholds()[I
    .locals 1

    const-string/jumbo v0, "peak_refresh_rate_brightness_thresholds"

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getIntArrayProperty(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getRefreshRateInHbmHdr()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$2700(Lcom/android/server/display/DisplayModeDirector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->access$2600(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/utils/DeviceConfigInterface;

    move-result-object v1

    const-string v2, "display_manager"

    const-string/jumbo v3, "refresh_rate_in_hbm_hdr"

    invoke-interface {v1, v2, v3, v0}, Lcom/android/server/utils/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getRefreshRateInHbmSunlight()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$2700(Lcom/android/server/display/DisplayModeDirector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->access$2600(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/utils/DeviceConfigInterface;

    move-result-object v1

    const-string v2, "display_manager"

    const-string/jumbo v3, "refresh_rate_in_hbm_sunlight"

    invoke-interface {v1, v2, v3, v0}, Lcom/android/server/utils/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getRefreshRateInHighZone()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$2700(Lcom/android/server/display/DisplayModeDirector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->access$2600(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/utils/DeviceConfigInterface;

    move-result-object v1

    const-string v2, "display_manager"

    const-string/jumbo v3, "refresh_rate_in_high_zone"

    invoke-interface {v1, v2, v3, v0}, Lcom/android/server/utils/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getRefreshRateInLowZone()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$2700(Lcom/android/server/display/DisplayModeDirector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->access$2600(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/utils/DeviceConfigInterface;

    move-result-object v1

    const-string v2, "display_manager"

    const-string/jumbo v3, "refresh_rate_in_zone"

    invoke-interface {v1, v2, v3, v0}, Lcom/android/server/utils/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getDefaultPeakRefreshRate()Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->access$2800(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getLowDisplayBrightnessThresholds()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getLowAmbientBrightnessThresholds()[I

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInLowZone()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->access$2800(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v4

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->access$2800(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getHighDisplayBrightnessThresholds()[I

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getHighAmbientBrightnessThresholds()[I

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInHighZone()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v8}, Lcom/android/server/display/DisplayModeDirector;->access$2800(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v8

    new-instance v9, Landroid/util/Pair;

    invoke-direct {v9, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v10, 0x6

    invoke-virtual {v8, v10, v9}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    iget-object v8, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v8}, Lcom/android/server/display/DisplayModeDirector;->access$2800(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9, v7, v6}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInHbmSunlight()I

    move-result v8

    iget-object v9, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v9}, Lcom/android/server/display/DisplayModeDirector;->access$2800(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v9

    const/4 v10, 0x7

    invoke-virtual {v9, v10, v8, v6}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInHbmHdr()I

    move-result v9

    iget-object v10, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v10}, Lcom/android/server/display/DisplayModeDirector;->access$2800(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11, v9, v6}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public startListening()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$2600(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/utils/DeviceConfigInterface;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const-string v2, "display_manager"

    invoke-interface {v0, v2, v1, p0}, Lcom/android/server/utils/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method
