.class public Lcom/android/server/display/DisplayDeviceConfig;
.super Ljava/lang/Object;
.source "DisplayDeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;,
        Lcom/android/server/display/DisplayDeviceConfig$SensorData;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_DEFAULT:F = 0.5f

.field private static final CONFIG_FILE_FORMAT:Ljava/lang/String; = "display_%s.xml"

.field private static final DISPLAY_CONFIG_DIR:Ljava/lang/String; = "displayconfig"

.field private static final ETC_DIR:Ljava/lang/String; = "etc"

.field public static final HIGH_BRIGHTNESS_MODE_UNSUPPORTED:F = NaNf

.field private static final INVALID_BRIGHTNESS_IN_CONFIG:F = -2.0f

.field private static final NITS_INVALID:F = -1.0f

.field private static final NO_SUFFIX_FORMAT:Ljava/lang/String; = "%d"

.field private static final PORT_SUFFIX_FORMAT:Ljava/lang/String; = "port_%d"

.field public static final QUIRK_CAN_SET_BRIGHTNESS_VIA_HWC:Ljava/lang/String; = "canSetBrightnessViaHwc"

.field private static final STABLE_FLAG:J = 0x4000000000000000L

.field private static final STABLE_ID_SUFFIX_FORMAT:Ljava/lang/String; = "id_%d"

.field private static final TAG:Ljava/lang/String; = "DisplayDeviceConfig"


# instance fields
.field private final mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

.field private mAmbientLuxBrighteningMinThreshold:F

.field private mAmbientLuxDarkeningMinThreshold:F

.field private mBacklight:[F

.field private mBacklightMaximum:F

.field private mBacklightMinimum:F

.field private mBacklightToBrightnessSpline:Landroid/util/Spline;

.field private mBacklightToNitsSpline:Landroid/util/Spline;

.field private mBrightness:[F

.field private mBrightnessDefault:F

.field private mBrightnessRampFastDecrease:F

.field private mBrightnessRampFastIncrease:F

.field private mBrightnessRampSlowDecrease:F

.field private mBrightnessRampSlowIncrease:F

.field private mBrightnessToBacklightSpline:Landroid/util/Spline;

.field private final mContext:Landroid/content/Context;

.field private mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

.field private mIsHighBrightnessModeEnabled:Z

.field private mLoadedFrom:Ljava/lang/String;

.field private mNits:[F

.field private final mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

.field private mQuirks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRawBacklight:[F

.field private mRawNits:[F

.field private final mRefreshRateLimitations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenBrighteningMinThreshold:F

.field private mScreenDarkeningMinThreshold:F


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceConfig$SensorData;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceConfig$SensorData;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningMinThreshold:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningMinThreshold:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxBrighteningMinThreshold:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxDarkeningMinThreshold:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsHighBrightnessModeEnabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    return-void
.end method

.method private constrainNitsAndBacklightArrays()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    cmpl-float v2, v2, v3

    const/4 v4, 0x1

    if-gtz v2, :cond_7

    array-length v2, v0

    sub-int/2addr v2, v4

    aget v2, v0, v2

    iget v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    cmpg-float v2, v2, v5

    if-ltz v2, :cond_7

    cmpl-float v2, v3, v5

    if-gtz v2, :cond_7

    array-length v2, v0

    new-array v2, v2, [F

    array-length v0, v0

    new-array v0, v0, [F

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v7, v6

    sub-int/2addr v7, v4

    if-ge v5, v7, :cond_1

    add-int/lit8 v7, v5, 0x1

    aget v6, v6, v7

    iget v7, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    move v3, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v3

    :goto_2
    iget-object v8, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v9, v8

    if-ge v7, v9, :cond_6

    if-nez v5, :cond_6

    sub-int v6, v7, v3

    aget v9, v8, v7

    iget v10, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    cmpl-float v9, v9, v10

    if-gez v9, :cond_3

    array-length v9, v8

    sub-int/2addr v9, v4

    if-lt v7, v9, :cond_2

    goto :goto_3

    :cond_2
    move v9, v1

    goto :goto_4

    :cond_3
    :goto_3
    move v9, v4

    :goto_4
    move v5, v9

    if-nez v6, :cond_4

    aget v8, v8, v7

    iget v9, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-static {v8, v9}, Landroid/util/MathUtils;->max(FF)F

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/display/DisplayDeviceConfig;->rawBacklightToNits(IF)F

    move-result v9

    goto :goto_5

    :cond_4
    if-eqz v5, :cond_5

    aget v8, v8, v7

    invoke-static {v8, v10}, Landroid/util/MathUtils;->min(FF)F

    move-result v8

    add-int/lit8 v9, v7, -0x1

    invoke-direct {p0, v9, v8}, Lcom/android/server/display/DisplayDeviceConfig;->rawBacklightToNits(IF)F

    move-result v9

    goto :goto_5

    :cond_5
    aget v8, v8, v7

    iget-object v9, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    aget v9, v9, v7

    :goto_5
    aput v8, v0, v6

    aput v9, v2, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v6, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    add-int/lit8 v1, v6, 0x1

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->createBacklightConversionSplines()V

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Min or max values are invalid; raw min="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; raw max="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v3, v1

    sub-int/2addr v3, v4

    aget v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; backlight min="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; backlight max="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/android/server/display/DisplayDeviceConfig$1;->$SwitchMap$com$android$server$display$config$ThermalStatus:[I

    invoke-virtual {p1}, Lcom/android/server/display/config/ThermalStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Thermal Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayDeviceConfig"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_0
    const/4 v0, 0x6

    return v0

    :pswitch_1
    const/4 v0, 0x5

    return v0

    :pswitch_2
    const/4 v0, 0x4

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :pswitch_4
    const/4 v0, 0x2

    return v0

    :pswitch_5
    const/4 v0, 0x1

    return v0

    :pswitch_6
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static create(Landroid/content/Context;JZ)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/android/server/display/DisplayDeviceConfig;->loadConfigFromDirectory(Landroid/content/Context;Ljava/io/File;J)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {p0, v1, p1, p2}, Lcom/android/server/display/DisplayDeviceConfig;->loadConfigFromDirectory(Landroid/content/Context;Ljava/io/File;J)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0, p3}, Lcom/android/server/display/DisplayDeviceConfig;->create(Landroid/content/Context;Z)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Z)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromGlobalXml(Landroid/content/Context;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromPmValues(Landroid/content/Context;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private createBacklightConversionSplines()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    const/4 v3, 0x0

    aget v3, v2, v3

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget v4, v2, v4

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aget v2, v2, v0

    invoke-static {v3, v4, v5, v6, v2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    invoke-static {v1, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    return-void
.end method

.method private static getConfigFromGlobalXml(Landroid/content/Context;)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 1

    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayDeviceConfig;-><init>(Landroid/content/Context;)V

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceConfig;->initFromGlobalXml()V

    return-object v0
.end method

.method private static getConfigFromPmValues(Landroid/content/Context;)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 1

    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayDeviceConfig;-><init>(Landroid/content/Context;)V

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceConfig;->initFromDefaultValues()V

    return-object v0
.end method

.method private static getConfigFromSuffix(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;J)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const-string v4, "display_%s.xml"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "etc"

    aput-object v5, v4, v3

    const-string v3, "displayconfig"

    aput-object v3, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    invoke-static {p1, v4}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v3, Lcom/android/server/display/DisplayDeviceConfig;

    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayDeviceConfig;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayDeviceConfig;->initFromFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    const/4 v4, 0x0

    return-object v4
.end method

.method private initFromDefaultValues()V
    .locals 2

    const-string v0, "Static values"

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->setSimpleMappingStrategyValues()V

    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAmbientLightSensorFromConfigXml()V

    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->setProxSensorUnspecified()V

    return-void
.end method

.method private initFromFile(Ljava/io/File;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    const-string v2, "DisplayDeviceConfig"

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display configuration is not a file: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", skipping"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/config/DisplayConfiguration;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessDefaultFromDdcXml(Lcom/android/server/display/config/DisplayConfiguration;)V

    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessConstraintsFromConfigXml()V

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMap(Lcom/android/server/display/config/DisplayConfiguration;)V

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadHighBrightnessModeData(Lcom/android/server/display/config/DisplayConfiguration;)V

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadQuirks(Lcom/android/server/display/config/DisplayConfiguration;)V

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRamps(Lcom/android/server/display/config/DisplayConfiguration;)V

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAmbientLightSensorFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadProxSensorFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessChangeThresholds(Lcom/android/server/display/config/DisplayConfiguration;)V

    goto :goto_0

    :cond_2
    const-string v3, "DisplayDeviceConfig file is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered an error while reading/parsing display config file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method private initFromGlobalXml()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessDefaultFromConfigXml()V

    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessConstraintsFromConfigXml()V

    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMapFromConfigXml()V

    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRampsFromConfigXml()V

    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAmbientLightSensorFromConfigXml()V

    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->setProxSensorUnspecified()V

    const-string v0, "<config.xml>"

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    return-void
.end method

.method private loadAmbientLightSensorFromConfigXml()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040233

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->type:Ljava/lang/String;

    return-void
.end method

.method private loadAmbientLightSensorFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getLightSensor()Lcom/android/server/display/config/SensorDetails;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {v0}, Lcom/android/server/display/config/SensorDetails;->getType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {v0}, Lcom/android/server/display/config/SensorDetails;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/display/config/SensorDetails;->getRefreshRate()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateRange;->getMinimum()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->floatValue()F

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->minRefreshRate:F

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateRange;->getMaximum()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->floatValue()F

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->maxRefreshRate:F

    :cond_0
    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAmbientLightSensorFromConfigXml()V

    :goto_0
    return-void
.end method

.method private loadBrightnessChangeThresholds(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 7

    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDisplayBrightnessChangeThresholds()Lcom/android/server/display/config/Thresholds;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getAmbientBrightnessChangeThresholds()Lcom/android/server/display/config/Thresholds;

    move-result-object v1

    if-eqz v0, :cond_1

    nop

    invoke-virtual {v0}, Lcom/android/server/display/config/Thresholds;->getBrighteningThresholds()Lcom/android/server/display/config/BrightnessThresholds;

    move-result-object v2

    nop

    invoke-virtual {v0}, Lcom/android/server/display/config/Thresholds;->getDarkeningThresholds()Lcom/android/server/display/config/BrightnessThresholds;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object v5

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v6

    iput v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningMinThreshold:F

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/math/BigDecimal;->floatValue()F

    move-result v6

    iput v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningMinThreshold:F

    :cond_1
    if-eqz v1, :cond_3

    nop

    invoke-virtual {v1}, Lcom/android/server/display/config/Thresholds;->getBrighteningThresholds()Lcom/android/server/display/config/BrightnessThresholds;

    move-result-object v2

    nop

    invoke-virtual {v1}, Lcom/android/server/display/config/Thresholds;->getDarkeningThresholds()Lcom/android/server/display/config/BrightnessThresholds;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object v5

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v6

    iput v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxBrighteningMinThreshold:F

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/math/BigDecimal;->floatValue()F

    move-result v6

    iput v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxDarkeningMinThreshold:F

    :cond_3
    return-void
.end method

.method private loadBrightnessConstraintsFromConfigXml()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    const/high16 v2, -0x40000000    # -2.0f

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_1

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    :goto_1
    return-void
.end method

.method private loadBrightnessDefaultFromConfigXml()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    const/high16 v1, -0x40000000    # -2.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    :goto_0
    return-void
.end method

.method private loadBrightnessDefaultFromDdcXml(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessDefault()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessDefaultFromConfigXml()V

    :cond_1
    :goto_0
    return-void
.end method

.method private loadBrightnessMap(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 12

    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessMap()Lcom/android/server/display/config/NitsMap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMapFromConfigXml()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/display/config/NitsMap;->getPoint()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [F

    new-array v4, v2, [F

    const/4 v5, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/display/config/Point;

    invoke-virtual {v7}, Lcom/android/server/display/config/Point;->getNits()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->floatValue()F

    move-result v8

    aput v8, v3, v5

    invoke-virtual {v7}, Lcom/android/server/display/config/Point;->getValue()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->floatValue()F

    move-result v8

    aput v8, v4, v5

    if-lez v5, :cond_2

    aget v8, v3, v5

    add-int/lit8 v9, v5, -0x1

    aget v9, v3, v9

    cmpg-float v8, v8, v9

    const-string v9, " < "

    const-string v10, "DisplayDeviceConfig"

    if-gez v8, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "screenBrightnessMap must be non-decreasing, ignoring rest  of configuration. Nits: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v3, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v5, -0x1

    aget v8, v3, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    aget v8, v4, v5

    add-int/lit8 v11, v5, -0x1

    aget v11, v4, v11

    cmpg-float v8, v8, v11

    if-gez v8, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "screenBrightnessMap must be non-decreasing, ignoring rest  of configuration. Value: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v4, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v5, -0x1

    aget v8, v4, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    nop

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_3
    iput-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    iput-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->constrainNitsAndBacklightArrays()V

    return-void
.end method

.method private loadBrightnessMapFromConfigXml()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v1

    const v2, 0x1070086

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    array-length v3, v2

    new-array v3, v3, [F

    const/4 v4, 0x0

    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    aget v5, v2, v4

    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    array-length v4, v3

    if-eqz v4, :cond_2

    array-length v4, v1

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    iput-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->constrainNitsAndBacklightArrays()V

    return-void

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->setSimpleMappingStrategyValues()V

    return-void
.end method

.method private loadBrightnessRamps(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampFastDecrease()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampFastIncrease()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampSlowDecrease()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampSlowIncrease()Ljava/math/BigDecimal;

    move-result-object v3

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    iput v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    iput v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    iput v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    iput v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    const-string v4, "DisplayDeviceConfig"

    const-string v5, "Per display brightness ramp values ignored because not all values are present in display device config"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRampsFromConfigXml()V

    :goto_0
    return-void
.end method

.method private loadBrightnessRampsFromConfigXml()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    return-void
.end method

.method private static loadConfigFromDirectory(Landroid/content/Context;Ljava/io/File;J)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 8

    const-string v0, "id_%d"

    invoke-static {p0, p1, v0, p2, p3}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromSuffix(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;J)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-wide v1, -0x4000000000000001L    # -1.9999999999999998

    and-long/2addr v1, p2

    const-string v3, "%d"

    invoke-static {p0, p1, v3, v1, v2}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromSuffix(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;J)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    nop

    invoke-static {p2, p3}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result v4

    int-to-long v5, v4

    const-string/jumbo v7, "port_%d"

    invoke-static {p0, p1, v7, v5, v6}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromSuffix(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;J)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    return-object v0
.end method

.method private loadHighBrightnessModeData(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 9

    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getHighBrightnessMode()Lcom/android/server/display/config/HighBrightnessMode;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/display/config/HighBrightnessMode;->getEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsHighBrightnessModeEnabled:Z

    new-instance v1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-direct {v1}, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v0}, Lcom/android/server/display/config/HighBrightnessMode;->getMinimumLux_all()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    iput v2, v1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumLux:F

    invoke-virtual {v0}, Lcom/android/server/display/config/HighBrightnessMode;->getTransitionPoint_all()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    cmpl-float v2, v1, v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v3, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    invoke-virtual {v0}, Lcom/android/server/display/config/HighBrightnessMode;->getTiming_all()Lcom/android/server/display/config/HbmTiming;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v2}, Lcom/android/server/display/config/HbmTiming;->getTimeWindowSecs_all()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeWindowMillis:J

    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v2}, Lcom/android/server/display/config/HbmTiming;->getTimeMaxSecs_all()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMaxMillis:J

    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v2}, Lcom/android/server/display/config/HbmTiming;->getTimeMinSecs_all()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMinMillis:J

    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v0}, Lcom/android/server/display/config/HighBrightnessMode;->getThermalStatusLimit_all()Lcom/android/server/display/config/ThermalStatus;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayDeviceConfig;->convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I

    move-result v4

    iput v4, v3, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->thermalStatusLimit:I

    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v0}, Lcom/android/server/display/config/HighBrightnessMode;->getAllowInLowPowerMode_all()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->allowInLowPowerMode:Z

    invoke-virtual {v0}, Lcom/android/server/display/config/HighBrightnessMode;->getRefreshRate_all()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/display/config/RefreshRateRange;->getMinimum()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->floatValue()F

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/display/config/RefreshRateRange;->getMaximum()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->floatValue()F

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    new-instance v7, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;

    const/4 v8, 0x1

    invoke-direct {v7, v8, v4, v5}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;-><init>(IFF)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HBM transition point invalid. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v4, v4, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " is not less than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    return-void
.end method

.method private loadProxSensorFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getProxSensor()Lcom/android/server/display/config/SensorDetails;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {v0}, Lcom/android/server/display/config/SensorDetails;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {v0}, Lcom/android/server/display/config/SensorDetails;->getType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->type:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/display/config/SensorDetails;->getRefreshRate()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateRange;->getMinimum()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->floatValue()F

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->minRefreshRate:F

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateRange;->getMaximum()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->floatValue()F

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->maxRefreshRate:F

    :cond_0
    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->setProxSensorUnspecified()V

    :goto_0
    return-void
.end method

.method private loadQuirks(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getQuirks()Lcom/android/server/display/config/DisplayQuirks;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/server/display/config/DisplayQuirks;->getQuirk()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mQuirks:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private rawBacklightToNits(IF)F
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    aget v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    aget v0, v0, v2

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    aget v3, v2, p1

    add-int/lit8 v4, p1, 0x1

    aget v2, v2, v4

    invoke-static {v1, v0, v3, v2, p2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    return v0
.end method

.method private setProxSensorUnspecified()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->type:Ljava/lang/String;

    return-void
.end method

.method private setSimpleMappingStrategyValues()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    invoke-static {v0, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method getAmbientLightSensor()Lcom/android/server/display/DisplayDeviceConfig$SensorData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    return-object v0
.end method

.method public getAmbientLuxBrighteningMinThreshold()F
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxBrighteningMinThreshold:F

    return v0
.end method

.method public getAmbientLuxDarkeningMinThreshold()F
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxDarkeningMinThreshold:F

    return v0
.end method

.method public getBacklight()[F
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    return-object v0
.end method

.method public getBacklightFromBrightness(F)F
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method public getBrightness()[F
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    return-object v0
.end method

.method public getBrightnessDefault()F
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    return v0
.end method

.method public getBrightnessRampFastDecrease()F
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    return v0
.end method

.method public getBrightnessRampFastIncrease()F
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    return v0
.end method

.method public getBrightnessRampSlowDecrease()F
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    return v0
.end method

.method public getBrightnessRampSlowIncrease()F
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    return v0
.end method

.method public getHighBrightnessModeData()Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsHighBrightnessModeEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;-><init>()V

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->copyTo(Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNits()[F
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    return-object v0
.end method

.method public getNitsFromBacklight(F)F
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    if-nez v0, :cond_0

    const-string v0, "DisplayDeviceConfig"

    const-string/jumbo v1, "requesting nits when no mapping exists."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method getProximitySensor()Lcom/android/server/display/DisplayDeviceConfig$SensorData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    return-object v0
.end method

.method public getRefreshRateLimitations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    return-object v0
.end method

.method public getScreenBrighteningMinThreshold()F
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningMinThreshold:F

    return v0
.end method

.method public getScreenDarkeningMinThreshold()F
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningMinThreshold:F

    return v0
.end method

.method public hasQuirk(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mQuirks:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayDeviceConfig{mLoadedFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBacklight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRawBacklight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRawNits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessToBacklightSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBacklightToBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBacklightMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBacklightMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mQuirks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mQuirks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isHbmEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsHighBrightnessModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mHbmData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampFastDecrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampFastIncrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampSlowDecrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampSlowIncrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenDarkeningMinThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningMinThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenBrighteningMinThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningMinThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mAmbientLuxDarkeningMinThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxDarkeningMinThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mAmbientLuxBrighteningMinThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxBrighteningMinThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mAmbientLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRefreshRateLimitations= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
