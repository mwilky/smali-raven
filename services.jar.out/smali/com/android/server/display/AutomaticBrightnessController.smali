.class Lcom/android/server/display/AutomaticBrightnessController;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AutomaticBrightnessController$Injector;,
        Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;,
        Lcom/android/server/display/AutomaticBrightnessController$Callbacks;,
        Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;,
        Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
    }
.end annotation


# static fields
.field private static final AMBIENT_LIGHT_LONG_HORIZON_MILLIS:I = 0x2710

.field private static final AMBIENT_LIGHT_PREDICTION_TIME_MILLIS:J = 0x64L

.field private static final AMBIENT_LIGHT_SHORT_HORIZON_MILLIS:I = 0x7d0

.field private static final BRIGHTNESS_ADJUSTMENT_SAMPLE_DEBOUNCE_MILLIS:I = 0x2710

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field private static final MSG_BRIGHTNESS_ADJUSTMENT_SAMPLE:I = 0x2

.field private static final MSG_INVALIDATE_SHORT_TERM_MODEL:I = 0x3

.field private static final MSG_RUN_UPDATE:I = 0x6

.field private static final MSG_UPDATE_AMBIENT_LUX:I = 0x1

.field private static final MSG_UPDATE_FOREGROUND_APP:I = 0x4

.field private static final MSG_UPDATE_FOREGROUND_APP_SYNC:I = 0x5

.field private static final TAG:Ljava/lang/String; = "AutomaticBrightnessController"


# instance fields
.field private mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field private mAmbientBrighteningThreshold:F

.field private final mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

.field private mAmbientDarkeningThreshold:F

.field private final mAmbientLightHorizon:I

.field private mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

.field private mAmbientLux:F

.field private mAmbientLuxValid:Z

.field private final mBrighteningLightDebounceConfig:J

.field private mBrightnessAdjustmentSampleOldBrightness:F

.field private mBrightnessAdjustmentSampleOldLux:F

.field private mBrightnessAdjustmentSamplePending:Z

.field private final mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field private final mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

.field private mContext:Landroid/content/Context;

.field private mCurrentLightSensorRate:I

.field private final mDarkeningLightDebounceConfig:J

.field private mDisplayPolicy:I

.field private final mDozeScaleFactor:F

.field private mForegroundAppCategory:I

.field private mForegroundAppPackageName:Ljava/lang/String;

.field private mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

.field private mHbmController:Lcom/android/server/display/HighBrightnessModeController;

.field private final mInitialLightSensorRate:I

.field private final mInjector:Lcom/android/server/display/AutomaticBrightnessController$Injector;

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightSensorWarmUpTimeConfig:I

.field private mLoggingEnabled:Z

.field private final mNormalLightSensorRate:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPendingForegroundAppCategory:I

.field private mPendingForegroundAppPackageName:Ljava/lang/String;

.field private mRecentLightSamples:I

.field private final mResetAmbientLuxAfterWarmUpConfig:Z

.field private mScreenAutoBrightness:F

.field private mScreenBrighteningThreshold:F

.field private final mScreenBrightnessRangeMaximum:F

.field private final mScreenBrightnessRangeMinimum:F

.field private final mScreenBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

.field private mScreenDarkeningThreshold:F

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mShortTermModelAnchor:F

.field private mShortTermModelValid:Z

.field private mTaskStackListener:Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;

.field private final mWeightingIntercept:I


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/server/display/BrightnessMappingStrategy;IFFFIIJJZLcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;Lcom/android/server/display/LogicalDisplay;Landroid/content/Context;Lcom/android/server/display/HighBrightnessModeController;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, p12

    move-wide/from16 v15, p14

    move/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    new-instance v23, Lcom/android/server/display/AutomaticBrightnessController$Injector;

    move-object/from16 v1, v23

    invoke-direct/range {v23 .. v23}, Lcom/android/server/display/AutomaticBrightnessController$Injector;-><init>()V

    invoke-direct/range {v0 .. v22}, Lcom/android/server/display/AutomaticBrightnessController;-><init>(Lcom/android/server/display/AutomaticBrightnessController$Injector;Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/server/display/BrightnessMappingStrategy;IFFFIIJJZLcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;Lcom/android/server/display/LogicalDisplay;Landroid/content/Context;Lcom/android/server/display/HighBrightnessModeController;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController$Injector;Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/server/display/BrightnessMappingStrategy;IFFFIIJJZLcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;Lcom/android/server/display/LogicalDisplay;Landroid/content/Context;Lcom/android/server/display/HighBrightnessModeController;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$2;

    invoke-direct {v2, v0}, Lcom/android/server/display/AutomaticBrightnessController$2;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mInjector:Lcom/android/server/display/AutomaticBrightnessController$Injector;

    move-object/from16 v3, p21

    iput-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    move-object/from16 v5, p4

    iput-object v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    move/from16 v7, p8

    iput v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:F

    move/from16 v8, p9

    iput v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:F

    move/from16 v9, p7

    iput v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    move/from16 v10, p10

    iput v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    iput v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    move/from16 v11, p12

    iput v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    const/4 v12, -0x1

    iput v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    move-wide/from16 v13, p13

    iput-wide v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    move-wide/from16 v12, p15

    iput-wide v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    move/from16 v14, p17

    iput-boolean v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    const/16 v15, 0x2710

    iput v15, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    iput v15, v0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    move-object/from16 v15, p18

    iput-object v15, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    move-object/from16 v2, p19

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    move-object/from16 v3, p3

    invoke-direct {v2, v0, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;-><init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    int-to-long v3, v1

    const/16 v1, 0x2710

    invoke-direct {v2, v3, v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;-><init>(JI)V

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;

    invoke-direct {v2, v0}, Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mTaskStackListener:Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    move-object/from16 v2, p22

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/app/IActivityTaskManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateForegroundApp()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateForegroundAppSync()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/display/AutomaticBrightnessController;JF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/display/AutomaticBrightnessController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/server/display/AutomaticBrightnessController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/AutomaticBrightnessController;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->collectBrightnessAdjustmentSample()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->invalidateShortTermModel()V

    return-void
.end method

.method private adjustLightSensorRate(I)V
    .locals 5

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    if-eq p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustLightSensorRate: previousRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutomaticBrightnessController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    mul-int/lit16 v3, p1, 0x3e8

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    :cond_1
    return-void
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 3

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    int-to-long v1, v1

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->push(JF)V

    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    return-void
.end method

.method private calculateAmbientLux(JJ)F
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    iget-boolean v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    const-string v6, ")"

    const-string v7, ", "

    const-string v8, "AutomaticBrightnessController"

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calculateAmbientLux("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v5

    if-nez v5, :cond_1

    const-string v6, "calculateAmbientLux: No ambient light readings available"

    invoke-static {v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v6, -0x40800000    # -1.0f

    return v6

    :cond_1
    const/4 v9, 0x0

    sub-long v10, v1, v3

    const/4 v12, 0x0

    :goto_0
    add-int/lit8 v13, v5, -0x1

    if-ge v12, v13, :cond_2

    iget-object v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v13, v14}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v13

    cmp-long v13, v13, v10

    if-gtz v13, :cond_2

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v12, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "calculateAmbientLux: selected endIndex="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", point=("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v13, v9}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v13, v9}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v6, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x64

    add-int/lit8 v15, v5, -0x1

    :goto_1
    if-lt v15, v9, :cond_6

    iget-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v3, v15}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v3

    if-ne v15, v9, :cond_4

    cmp-long v16, v3, v10

    if-gez v16, :cond_4

    move-wide v3, v10

    :cond_4
    move-wide/from16 v16, v10

    move v11, v9

    sub-long v9, v3, v1

    invoke-direct {v0, v9, v10, v13, v14}, Lcom/android/server/display/AutomaticBrightnessController;->calculateWeight(JJ)F

    move-result v1

    iget-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v2, v15}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v2

    move-wide/from16 v18, v3

    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateAmbientLux: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "]: lux="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", weight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-float/2addr v12, v1

    mul-float v3, v2, v1

    add-float/2addr v6, v3

    move-wide v13, v9

    add-int/lit8 v15, v15, -0x1

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move v9, v11

    move-wide/from16 v10, v16

    goto :goto_1

    :cond_6
    move-wide/from16 v16, v10

    move v11, v9

    iget-boolean v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateAmbientLux: totalWeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", newAmbientLux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-float v2, v6, v12

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    div-float v1, v6, v12

    return v1
.end method

.method private calculateWeight(JJ)F
    .locals 2

    invoke-direct {p0, p3, p4}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private cancelBrightnessAdjustmentSample()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private clampScreenBrightness(F)F
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMin()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v1}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private collectBrightnessAdjustmentSample()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-gez v2, :cond_0

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto-brightness adjustment changed by user: lux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", ring="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutomaticBrightnessController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const v1, 0x88b8

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_2
    return-void
.end method

.method private handleLightSensorEvent(JF)V
    .locals 4

    float-to-int v0, p3

    const-wide/32 v1, 0x20000

    const-string v3, "ALS"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->adjustLightSensorRate(I)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->applyLightSensorMeasurement(JF)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    return-void
.end method

.method private invalidateShortTermModel()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "AutomaticBrightnessController"

    const-string v1, "ShortTermModel: invalidate user data"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    return-void
.end method

.method private static isInteractivePolicy(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private nextAmbientLightBrighteningTransition(J)J
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    move-wide v1, p1

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_1

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-wide v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    add-long/2addr v3, v1

    return-wide v3
.end method

.method private nextAmbientLightDarkeningTransition(J)J
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    move-wide v1, p1

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_1

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-wide v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    add-long/2addr v3, v1

    return-wide v3
.end method

.method private prepareBrightnessAdjustmentSample()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    const/4 v1, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:F

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private registerForegroundAppUpdater()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTaskStackListener:Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateForegroundApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register foreground app updater: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutomaticBrightnessController"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private setAmbientLux(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    const-string v1, "AutomaticBrightnessController"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAmbientLux("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const-string v0, "Ambient lux was negative, ignoring and setting to 0"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_1
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    invoke-virtual {v0, p1}, Lcom/android/server/display/HysteresisLevels;->getBrighteningThreshold(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    invoke-virtual {v0, p1}, Lcom/android/server/display/HysteresisLevels;->getDarkeningThreshold(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Lcom/android/server/display/HighBrightnessModeController;->onAmbientLuxChange(F)V

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v1, v2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->shouldResetShortTermModel(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    :cond_3
    :goto_0
    return-void
.end method

.method private setAutoBrightnessAdjustment(F)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->setAutoBrightnessAdjustment(F)Z

    move-result v0

    return v0
.end method

.method private setDisplayPolicy(I)Z
    .locals 5

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display policy transitioning from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutomaticBrightnessController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p1}, Lcom/android/server/display/AutomaticBrightnessController;->isInteractivePolicy(I)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isInteractivePolicy(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v3}, Lcom/android/server/display/BrightnessMappingStrategy;->getShortTermModelTimeout()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/server/display/AutomaticBrightnessController;->isInteractivePolicy(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isInteractivePolicy(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    :cond_3
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private setLightSensorEnabled(Z)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-nez v2, :cond_1

    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->registerForegroundAppUpdater()V

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    mul-int/lit16 v4, v4, 0x3e8

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    xor-int/2addr v2, v1

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->unregisterForegroundAppUpdater()V

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1
    return v0
.end method

.method private setScreenBrightnessByUser(F)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v1, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->addUserDataPoint(FF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShortTermModel: anchor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutomaticBrightnessController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private unregisterForegroundAppUpdater()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTaskStackListener:Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    return-void
.end method

.method private updateAmbientLux()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    int-to-long v3, v3

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    return-void
.end method

.method private updateAmbientLux(J)V
    .locals 13

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    const-string v1, ", mAmbientLux="

    const/4 v2, 0x0

    const-wide/16 v3, 0x7d0

    const-string v5, "AutomaticBrightnessController"

    const/4 v6, 0x1

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v7, v0

    iget-wide v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    add-long/2addr v7, v9

    cmp-long v0, p1, v7

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAmbientLux: Sensor not ready yet: time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timeWhenSensorWarmedUp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    return-void

    :cond_1
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    iput-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateAmbientLux: Initializing: mAmbientLightRingBuffer="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, v6, v2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v7

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v9

    const-wide/16 v11, 0x2710

    invoke-direct {p0, p1, p2, v11, v12}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v0

    invoke-direct {p0, p1, p2, v3, v4}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v3

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    cmpl-float v11, v0, v4

    if-ltz v11, :cond_4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_4

    cmp-long v4, v7, p1

    if-lez v4, :cond_5

    :cond_4
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    cmpg-float v11, v0, v4

    if-gtz v11, :cond_8

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_8

    cmp-long v4, v9, p1

    if-gtz v4, :cond_8

    :cond_5
    invoke-direct {p0, v3}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateAmbientLux: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v11, v3, v11

    if-lez v11, :cond_6

    const-string v11, "Brightened"

    goto :goto_0

    :cond_6
    const-string v11, "Darkened"

    :goto_0
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": mBrighteningLuxThreshold="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", mAmbientLightRingBuffer="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-direct {p0, v6, v2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v7

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v9

    :cond_8
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    cmp-long v4, v1, p1

    if-lez v4, :cond_9

    move-wide v11, v1

    goto :goto_1

    :cond_9
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    int-to-long v11, v4

    add-long/2addr v11, p1

    :goto_1
    move-wide v1, v11

    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateAmbientLux: Scheduling ambient lux update for "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v4, v6, v1, v2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method private updateAutoBrightness(ZZ)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(FLjava/lang/String;I)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(F)F

    move-result v1

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    invoke-direct {p0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(F)F

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v2

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    const-string v4, "AutomaticBrightnessController"

    if-nez v3, :cond_2

    if-nez p2, :cond_2

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenDarkeningThreshold:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrighteningThreshold:F

    cmpg-float v3, v1, v3

    if-gez v3, :cond_2

    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignoring newScreenAutoBrightness: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenDarkeningThreshold:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " < "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrighteningThreshold:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    invoke-static {v3, v1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAutoBrightness: mScreenAutoBrightness="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", newScreenAutoBrightness="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    invoke-virtual {v3, v1}, Lcom/android/server/display/HysteresisLevels;->getBrighteningThreshold(F)F

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(F)F

    move-result v3

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrighteningThreshold:F

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    invoke-virtual {v3, v1}, Lcom/android/server/display/HysteresisLevels;->getDarkeningThreshold(F)F

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(F)F

    move-result v3

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenDarkeningThreshold:F

    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v3}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness()V

    :cond_4
    return-void
.end method

.method private updateForegroundApp()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "AutomaticBrightnessController"

    const-string v1, "Attempting to update foreground app"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInjector:Lcom/android/server/display/AutomaticBrightnessController$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$Injector;->getBackgroundThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/AutomaticBrightnessController$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/AutomaticBrightnessController$1;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateForegroundAppSync()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating foreground app: packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutomaticBrightnessController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    return-void
.end method

.method private weightIntegral(J)F
    .locals 3

    long-to-float v0, p1

    long-to-float v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public configure(ZLandroid/hardware/display/BrightnessConfiguration;FZFZI)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/HighBrightnessModeController;->setAutoBrightnessEnabled(Z)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p7, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/display/AutomaticBrightnessController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z

    move-result v3

    invoke-direct {p0, p7}, Lcom/android/server/display/AutomaticBrightnessController;->setDisplayPolicy(I)Z

    move-result v4

    or-int/2addr v3, v4

    if-eqz p6, :cond_1

    invoke-direct {p0, p5}, Lcom/android/server/display/AutomaticBrightnessController;->setAutoBrightnessAdjustment(F)Z

    move-result v4

    or-int/2addr v3, v4

    :cond_1
    if-eqz p4, :cond_2

    if-eqz p1, :cond_2

    invoke-direct {p0, p3}, Lcom/android/server/display/AutomaticBrightnessController;->setScreenBrightnessByUser(F)Z

    move-result v4

    or-int/2addr v3, v4

    :cond_2
    if-nez p4, :cond_4

    if-eqz p6, :cond_3

    goto :goto_1

    :cond_3
    move v4, v0

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v1

    :goto_2
    if-eqz v4, :cond_5

    if-eqz p1, :cond_5

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->prepareBrightnessAdjustmentSample()V

    :cond_5
    if-eqz p1, :cond_6

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    move v1, v0

    :goto_3
    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    move-result v1

    or-int/2addr v1, v3

    if-eqz v1, :cond_7

    invoke-direct {p0, v0, v4}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    :cond_7
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Automatic Brightness Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozeScaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInitialLightSensorRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNormalLightSensorRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorWarmUpTimeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrighteningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDarkeningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mResetAmbientLuxAfterWarmUpConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLightHorizon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWeightingIntercept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Automatic Brightness Controller State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentLightSensorRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLuxValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientBrighteningThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientDarkeningThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrighteningThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrighteningThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenDarkeningThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenDarkeningThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLightSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLightRingBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    invoke-static {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShortTermModelTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getShortTermModelTimeout()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShortTermModelAnchor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShortTermModelValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessAdjustmentSamplePending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessAdjustmentSampleOldLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessAdjustmentSampleOldBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mForegroundAppPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingForegroundAppPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mForegroundAppCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingForegroundAppCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    invoke-virtual {v0, p1}, Lcom/android/server/display/HysteresisLevels;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    invoke-virtual {v0, p1}, Lcom/android/server/display/HysteresisLevels;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAutomaticScreenBrightness()F
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    mul-float/2addr v0, v1

    return v0

    :cond_1
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    return v0
.end method

.method public getAutomaticScreenBrightnessAdjustment()F
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getAutoBrightnessAdjustment()F

    move-result v0

    return v0
.end method

.method public getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public hasUserDataPoints()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->hasUserDataPoints()Z

    move-result v0

    return v0
.end method

.method public hasValidAmbientLux()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    return v0
.end method

.method public isDefaultConfig()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->isDefaultConfig()Z

    move-result v0

    return v0
.end method

.method public resetShortTermModel()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->clearUserDataPoints()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setLoggingEnabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->setLoggingEnabled(Z)Z

    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    const/4 v0, 0x1

    return v0
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    return-void
.end method

.method public update()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessage(I)Z

    return-void
.end method
