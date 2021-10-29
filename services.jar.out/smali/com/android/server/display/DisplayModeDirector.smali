.class public Lcom/android/server/display/DisplayModeDirector;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayModeDirector$BallotBox;,
        Lcom/android/server/display/DisplayModeDirector$RealInjector;,
        Lcom/android/server/display/DisplayModeDirector$Injector;,
        Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;,
        Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;,
        Lcom/android/server/display/DisplayModeDirector$HbmObserver;,
        Lcom/android/server/display/DisplayModeDirector$SensorObserver;,
        Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;,
        Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;,
        Lcom/android/server/display/DisplayModeDirector$DisplayObserver;,
        Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;,
        Lcom/android/server/display/DisplayModeDirector$SettingsObserver;,
        Lcom/android/server/display/DisplayModeDirector$Vote;,
        Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;,
        Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;,
        Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;,
        Lcom/android/server/display/DisplayModeDirector$VoteSummary;
    }
.end annotation


# static fields
.field private static final FLOAT_TOLERANCE:F = 0.01f

.field private static final GLOBAL_ID:I = -0x1

.field private static final INVALID_DISPLAY_MODE_ID:I = -0x1

.field private static final MSG_DEFAULT_PEAK_REFRESH_RATE_CHANGED:I = 0x3

.field private static final MSG_HIGH_BRIGHTNESS_THRESHOLDS_CHANGED:I = 0x6

.field private static final MSG_LOW_BRIGHTNESS_THRESHOLDS_CHANGED:I = 0x2

.field private static final MSG_REFRESH_RATE_IN_HBM_HDR_CHANGED:I = 0x8

.field private static final MSG_REFRESH_RATE_IN_HBM_SUNLIGHT_CHANGED:I = 0x7

.field private static final MSG_REFRESH_RATE_IN_HIGH_ZONE_CHANGED:I = 0x5

.field private static final MSG_REFRESH_RATE_IN_LOW_ZONE_CHANGED:I = 0x4

.field private static final MSG_REFRESH_RATE_RANGE_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DisplayModeDirector"


# instance fields
.field private mAlwaysRespectAppRequest:Z

.field private final mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

.field private mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

.field private final mContext:Landroid/content/Context;

.field private mDefaultModeByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field private mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

.field private final mDeviceConfig:Lcom/android/server/utils/DeviceConfigInterface;

.field private final mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

.field private final mDisplayObserver:Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

.field private final mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

.field private final mHbmObserver:Lcom/android/server/display/DisplayModeDirector$HbmObserver;

.field private final mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

.field private final mLock:Ljava/lang/Object;

.field private mLoggingEnabled:Z

.field private mModeSwitchingType:I

.field private final mSensorObserver:Lcom/android/server/display/DisplayModeDirector$SensorObserver;

.field private final mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

.field private final mSkinThermalStatusObserver:Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;

.field private mSupportedModesByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field private final mUdfpsObserver:Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;

.field private mVotesByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/android/server/display/DisplayModeDirector$RealInjector;

    invoke-direct {v0, p1}, Lcom/android/server/display/DisplayModeDirector$RealInjector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/DisplayModeDirector;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayModeDirector$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayModeDirector$Injector;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    iput-object p3, p0, Lcom/android/server/display/DisplayModeDirector;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    new-instance v0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    new-instance v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    new-instance v0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Lcom/android/server/display/DisplayModeDirector$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;

    new-instance v0, Lcom/android/server/display/DisplayModeDirector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayModeDirector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayModeDirector;)V

    new-instance v1, Lcom/android/server/display/DisplayModeDirector$SensorObserver;

    invoke-direct {v1, p1, v0, p3}, Lcom/android/server/display/DisplayModeDirector$SensorObserver;-><init>(Landroid/content/Context;Lcom/android/server/display/DisplayModeDirector$BallotBox;Lcom/android/server/display/DisplayModeDirector$Injector;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSensorObserver:Lcom/android/server/display/DisplayModeDirector$SensorObserver;

    new-instance v1, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;

    invoke-direct {v1, p0, p3, v0}, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Lcom/android/server/display/DisplayModeDirector$Injector;Lcom/android/server/display/DisplayModeDirector$BallotBox;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSkinThermalStatusObserver:Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;

    new-instance v1, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;-><init>(Lcom/android/server/display/DisplayModeDirector;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    new-instance v2, Lcom/android/server/display/DisplayModeDirector$HbmObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p3, v0, v3, v1}, Lcom/android/server/display/DisplayModeDirector$HbmObserver;-><init>(Lcom/android/server/display/DisplayModeDirector$Injector;Lcom/android/server/display/DisplayModeDirector$BallotBox;Landroid/os/Handler;Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;)V

    iput-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/DisplayModeDirector$HbmObserver;

    invoke-interface {p3}, Lcom/android/server/display/DisplayModeDirector$Injector;->getDeviceConfig()Lcom/android/server/utils/DeviceConfigInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mDeviceConfig:Lcom/android/server/utils/DeviceConfigInterface;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/DisplayModeDirector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/display/DisplayModeDirector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/utils/DeviceConfigInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDeviceConfig:Lcom/android/server/utils/DeviceConfigInterface;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/display/DisplayModeDirector;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$SettingsObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$HbmObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/DisplayModeDirector$HbmObserver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$Injector;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(ILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/DisplayModeDirector;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/display/DisplayModeDirector;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    return p1
.end method

.method private filterModes([Landroid/view/Display$Mode;Lcom/android/server/display/DisplayModeDirector$VoteSummary;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/Display$Mode;",
            "Lcom/android/server/display/DisplayModeDirector$VoteSummary;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    array-length v3, p1

    :goto_1
    if-ge v2, v3, :cond_6

    aget-object v4, p1, v2

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    iget v6, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    const-string v7, "Discarding mode "

    const-string v8, "DisplayModeDirector"

    if-ne v5, v6, :cond_4

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    iget v6, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    if-eq v5, v6, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    iget v6, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    const v9, 0x3c23d70a    # 0.01f

    sub-float/2addr v6, v9

    cmpg-float v6, v5, v6

    if-ltz v6, :cond_3

    iget v6, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    add-float/2addr v6, v9

    cmpl-float v6, v5, v6

    if-lez v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v6

    iget v7, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    sub-float/2addr v7, v9

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_5

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v6

    iget v7, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    add-float/2addr v7, v9

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_5

    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_3
    :goto_2
    iget-boolean v6, p0, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", outside refresh rate bounds: minRefreshRate="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", maxRefreshRate="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", modeRefreshRate="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    :goto_3
    iget-boolean v5, p0, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", wrong size: desiredWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": desiredHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": actualWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": actualHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_6
    if-eqz v1, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    :cond_7
    return-object v0
.end method

.method private getOrCreateVotesByDisplay(I)Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method private getVotesLocked(I)Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayModeDirector$Vote;

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method private notifyDesiredDisplayModeSpecsChangedLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private summarizeVotes(Landroid/util/SparseArray;IILcom/android/server/display/DisplayModeDirector$VoteSummary;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;II",
            "Lcom/android/server/display/DisplayModeDirector$VoteSummary;",
            ")V"
        }
    .end annotation

    invoke-virtual {p4}, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->reset()V

    move v0, p3

    :goto_0
    if-lt v0, p2, :cond_4

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayModeDirector$Vote;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget v2, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget-object v3, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->refreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget v2, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    iget-object v3, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->refreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    iget v2, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget v2, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    if-ne v2, v3, :cond_1

    iget v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    if-lez v2, :cond_1

    iget v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    if-lez v2, :cond_1

    iget v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    iput v2, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    iget v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    iput v2, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    :cond_1
    iget-boolean v2, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->disableRefreshRateSwitching:Z

    if-nez v2, :cond_2

    iget-boolean v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->disableRefreshRateSwitching:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->disableRefreshRateSwitching:Z

    :cond_2
    iget v2, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->baseModeRefreshRate:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->baseModeRefreshRate:F

    iput v2, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static switchingTypeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown SwitchingType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "SWITCHING_TYPE_ACROSS_AND_WITHIN_GROUPS"

    return-object v0

    :pswitch_1
    const-string v0, "SWITCHING_TYPE_WITHIN_GROUPS"

    return-object v0

    :pswitch_2
    const-string v0, "SWITCHING_TYPE_NONE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    const-string v1, ", vote="

    const-string v2, "DisplayModeDirector"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateVoteLocked(displayId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", priority="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ltz p2, :cond_5

    const/16 v0, 0xc

    if-le p2, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector;->getOrCreateVotesByDisplay(I)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz p3, :cond_2

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No votes left for display "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", removing."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_4
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    return-void

    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received a vote with an invalid priority, ignoring: priority="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private updateVoteLocked(ILcom/android/server/display/DisplayModeDirector$Vote;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 7

    const-string v0, "DisplayModeDirector"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "  mSupportedModesByDisplay:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/Display$Mode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "  mDefaultModeByDisplay:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display$Mode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "  mVotesByDisplay:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    const/16 v3, 0xc

    :goto_3
    if-ltz v3, :cond_3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayModeDirector$Vote;

    if-nez v4, :cond_2

    goto :goto_4

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mModeSwitchingType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->switchingTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAlwaysRespectAppRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSensorObserver:Lcom/android/server/display/DisplayModeDirector$SensorObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/DisplayModeDirector$HbmObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSkinThermalStatusObserver:Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAppRequestObserver()Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    return-object v0
.end method

.method getBrightnessObserver()Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    return-object v0
.end method

.method public getDesiredDisplayModeSpecs(I)Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;
    .locals 20

    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/display/DisplayModeDirector;->getVotesLocked(I)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/Display$Mode;

    iget-object v5, v1, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Display$Mode;

    if-eqz v4, :cond_11

    if-nez v5, :cond_0

    move-object/from16 v18, v0

    move-object/from16 v19, v4

    goto/16 :goto_7

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;

    invoke-direct {v7}, Lcom/android/server/display/DisplayModeDirector$VoteSummary;-><init>()V

    const/4 v8, 0x0

    const/16 v9, 0xc

    iget-boolean v10, v1, Lcom/android/server/display/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    if-eqz v10, :cond_1

    const/4 v8, 0x5

    const/4 v9, 0x6

    :cond_1
    :goto_0
    if-gt v8, v9, :cond_6

    invoke-direct {v1, v0, v8, v9, v7}, Lcom/android/server/display/DisplayModeDirector;->summarizeVotes(Landroid/util/SparseArray;IILcom/android/server/display/DisplayModeDirector$VoteSummary;)V

    iget v10, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    iget v10, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    if-ne v10, v11, :cond_3

    :cond_2
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v10

    iput v10, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v10

    iput v10, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    :cond_3
    invoke-direct {v1, v4, v7}, Lcom/android/server/display/DisplayModeDirector;->filterModes([Landroid/view/Display$Mode;Lcom/android/server/display/DisplayModeDirector$VoteSummary;)Ljava/util/ArrayList;

    move-result-object v10

    move-object v6, v10

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    iget-boolean v10, v1, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    if-eqz v10, :cond_6

    const-string v10, "DisplayModeDirector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found available modes="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " with lowest priority considered "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " and constraints: width="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", height="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", minRefreshRate="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", maxRefreshRate="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", disableRefreshRateSwitching="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->disableRefreshRateSwitching:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", baseModeRefreshRate="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-boolean v10, v1, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    if-eqz v10, :cond_5

    const-string v10, "DisplayModeDirector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t find available modes with lowest priority set to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " and with the following constraints: width="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", height="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", minRefreshRate="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", maxRefreshRate="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", disableRefreshRateSwitching="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->disableRefreshRateSwitching:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", baseModeRefreshRate="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_1
    new-instance v10, Lcom/android/server/display/DisplayModeDirector$VoteSummary;

    invoke-direct {v10}, Lcom/android/server/display/DisplayModeDirector$VoteSummary;-><init>()V

    const/4 v11, 0x4

    const/16 v12, 0xc

    invoke-direct {v1, v0, v11, v12, v10}, Lcom/android/server/display/DisplayModeDirector;->summarizeVotes(Landroid/util/SparseArray;IILcom/android/server/display/DisplayModeDirector$VoteSummary;)V

    iget v11, v10, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget v12, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    iput v11, v10, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget v11, v10, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    iget v12, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    iput v11, v10, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    iget-boolean v11, v1, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    const/4 v12, 0x2

    const/4 v14, 0x0

    if-eqz v11, :cond_7

    const-string v11, "DisplayModeDirector"

    const-string v15, "App request range: [%.0f %.0f]"

    new-array v13, v12, [Ljava/lang/Object;

    iget v12, v10, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v13, v14

    iget v12, v10, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/16 v16, 0x1

    aput-object v12, v13, v16

    invoke-static {v15, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    const/16 v16, 0x1

    :goto_2
    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/Display$Mode;

    iget v15, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    invoke-virtual {v13}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v17

    const v18, 0x3c23d70a    # 0.01f

    sub-float v17, v17, v18

    cmpl-float v15, v15, v17

    if-ltz v15, :cond_8

    iget v15, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    invoke-virtual {v13}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v17

    add-float v17, v17, v18

    cmpg-float v15, v15, v17

    if-gtz v15, :cond_8

    move-object v11, v13

    :cond_8
    goto :goto_3

    :cond_9
    if-nez v11, :cond_b

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/Display$Mode;

    invoke-virtual {v13}, Landroid/view/Display$Mode;->getModeId()I

    move-result v15

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v14

    if-ne v15, v14, :cond_a

    move-object v11, v5

    goto :goto_5

    :cond_a
    const/4 v14, 0x0

    goto :goto_4

    :cond_b
    :goto_5
    if-nez v11, :cond_c

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_c

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/Display$Mode;

    move-object v11, v13

    :cond_c
    if-nez v11, :cond_d

    const-string v12, "DisplayModeDirector"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Can\'t find a set of allowed modes which satisfies the votes. Falling back to the default mode. Display = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", votes = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", supported modes = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v12

    new-instance v13, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v14

    new-instance v15, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    invoke-direct {v15, v12, v12}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;-><init>(FF)V

    move-object/from16 v18, v0

    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    invoke-direct {v0, v12, v12}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;-><init>(FF)V

    move-object/from16 v19, v4

    const/4 v4, 0x0

    invoke-direct {v13, v14, v4, v15, v0}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>(IZLandroid/hardware/display/DisplayManagerInternal$RefreshRateRange;Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;)V

    monitor-exit v3

    return-object v13

    :cond_d
    move-object/from16 v18, v0

    move-object/from16 v19, v4

    const/4 v4, 0x0

    iget v0, v1, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    if-eqz v0, :cond_e

    iget-boolean v0, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->disableRefreshRateSwitching:Z

    if-eqz v0, :cond_f

    :cond_e
    invoke-virtual {v11}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    iput v0, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    iput v0, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget v12, v1, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    if-nez v12, :cond_f

    iput v0, v10, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    iput v0, v10, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    :cond_f
    iget v0, v1, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    const/4 v12, 0x2

    if-ne v0, v12, :cond_10

    move/from16 v13, v16

    goto :goto_6

    :cond_10
    move v13, v4

    :goto_6
    move v0, v13

    new-instance v4, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v11}, Landroid/view/Display$Mode;->getModeId()I

    move-result v12

    new-instance v13, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v14, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget v15, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-direct {v13, v14, v15}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;-><init>(FF)V

    new-instance v14, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v15, v10, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget v1, v10, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-direct {v14, v15, v1}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;-><init>(FF)V

    invoke-direct {v4, v12, v0, v13, v14}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>(IZLandroid/hardware/display/DisplayManagerInternal$RefreshRateRange;Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;)V

    monitor-exit v3

    return-object v4

    :cond_11
    move-object/from16 v18, v0

    move-object/from16 v19, v4

    :goto_7
    const-string v0, "DisplayModeDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asked about unknown display, returning empty display mode specs!(id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v0}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    monitor-exit v3

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getDesiredDisplayModeSpecsWithInjectedFpsSettings(FFF)Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->access$100(Lcom/android/server/display/DisplayModeDirector$SettingsObserver;FFF)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayModeDirector;->getDesiredDisplayModeSpecs(I)Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getHbmObserver()Lcom/android/server/display/DisplayModeDirector$HbmObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/DisplayModeDirector$HbmObserver;

    return-object v0
.end method

.method public getModeSwitchingType()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSettingsObserver()Lcom/android/server/display/DisplayModeDirector$SettingsObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    return-object v0
.end method

.method getUdpfsObserver()Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;

    return-object v0
.end method

.method getVote(II)Lcom/android/server/display/DisplayModeDirector$Vote;
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector;->getVotesLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayModeDirector$Vote;

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method injectBrightnessObserver(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    return-void
.end method

.method injectDefaultModeByDisplay(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/Display$Mode;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    return-void
.end method

.method injectSupportedModesByDisplay(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/view/Display$Mode;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    return-void
.end method

.method injectVotesByDisplay(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    return-void
.end method

.method public synthetic lambda$new$0$DisplayModeDirector(IILcom/android/server/display/DisplayModeDirector$Vote;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onBootCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->observe()V

    return-void
.end method

.method public setDesiredDisplayModeSpecsListener(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLoggingEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->setLoggingEnabled(Z)V

    return-void
.end method

.method public setModeSwitchingType(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setShouldAlwaysRespectAppRequestedMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shouldAlwaysRespectAppRequestedMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start(Landroid/hardware/SensorManager;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->observe()V

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->observe()V

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->observe(Landroid/hardware/SensorManager;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSensorObserver:Lcom/android/server/display/DisplayModeDirector$SensorObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->observe()V

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/DisplayModeDirector$HbmObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->observe()V

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSkinThermalStatusObserver:Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->observe()V

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
