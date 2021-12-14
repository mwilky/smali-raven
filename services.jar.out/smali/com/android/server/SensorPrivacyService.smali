.class public final Lcom/android/server/SensorPrivacyService;
.super Lcom/android/server/SystemService;
.source "SensorPrivacyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;,
        Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;,
        Lcom/android/server/SensorPrivacyService$DeathRecipient;,
        Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;,
        Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;
    }
.end annotation


# static fields
.field private static final ACTION_DISABLE_INDIVIDUAL_SENSOR_PRIVACY:Ljava/lang/String;

.field private static final CURRENT_PERSISTENCE_VERSION:I = 0x1

.field private static final CURRENT_VERSION:I = 0x1

.field private static final DEBUG:Z = false

.field private static final DEBUG_LOGGING:Z = false

.field public static final REMINDER_DIALOG_DELAY_MILLIS:I = 0x1f4

.field private static final SENSOR_PRIVACY_CHANNEL_ID:Ljava/lang/String; = "sensor_privacy"

.field private static final SENSOR_PRIVACY_XML_FILE:Ljava/lang/String; = "sensor_privacy.xml"

.field private static final TAG:Ljava/lang/String;

.field private static final VER0_ENABLED:I = 0x0

.field private static final VER0_INDIVIDUAL_ENABLED:I = 0x1

.field private static final VER1_ENABLED:I = 0x0

.field private static final VER1_INDIVIDUAL_ENABLED:I = 0x1

.field private static final XML_ATTRIBUTE_ENABLED:Ljava/lang/String; = "enabled"

.field private static final XML_ATTRIBUTE_ID:Ljava/lang/String; = "id"

.field private static final XML_ATTRIBUTE_LAST_CHANGE:Ljava/lang/String; = "last-change"

.field private static final XML_ATTRIBUTE_PERSISTENCE_VERSION:Ljava/lang/String; = "persistence-version"

.field private static final XML_ATTRIBUTE_SENSOR:Ljava/lang/String; = "sensor"

.field private static final XML_ATTRIBUTE_VERSION:Ljava/lang/String; = "version"

.field private static final XML_TAG_INDIVIDUAL_SENSOR_PRIVACY:Ljava/lang/String; = "individual-sensor-privacy"

.field private static final XML_TAG_SENSOR_PRIVACY:Ljava/lang/String; = "sensor-privacy"

.field private static final XML_TAG_USER:Ljava/lang/String; = "user"


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

.field private final mAppOpsRestrictionToken:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mEmergencyCallHelper:Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mSensorPrivacyManagerInternal:Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;

.field private final mSensorPrivacyServiceImpl:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/server/SensorPrivacyService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/SensorPrivacyService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".action.disable_sensor_privacy"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/SensorPrivacyService;->ACTION_DISABLE_INDIVIDUAL_SENSOR_PRIVACY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/SensorPrivacyService;->mAppOpsRestrictionToken:Landroid/os/IBinder;

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/SensorPrivacyService;->mCurrentUser:I

    iput-object p1, p0, Lcom/android/server/SensorPrivacyService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/SensorPrivacyService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-class v0, Landroid/app/AppOpsManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/SensorPrivacyService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManagerInternal;

    iput-object v0, p0, Lcom/android/server/SensorPrivacyService;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/SensorPrivacyService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/SensorPrivacyService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/SensorPrivacyService;->mActivityManager:Landroid/app/ActivityManager;

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/SensorPrivacyService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/SensorPrivacyService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-class v0, Landroid/app/ActivityTaskManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityTaskManager;

    iput-object v0, p0, Lcom/android/server/SensorPrivacyService;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/SensorPrivacyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-direct {v0, p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;-><init>(Lcom/android/server/SensorPrivacyService;)V

    iput-object v0, p0, Lcom/android/server/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/SensorPrivacyService;)Landroid/app/ActivityManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/SensorPrivacyService;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SensorPrivacyService;->forAllUsers(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/SensorPrivacyService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/SensorPrivacyService;->mCurrentUser:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService;->mEmergencyCallHelper:Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/SensorPrivacyService;)Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$200()J
    .locals 2

    invoke-static {}, Lcom/android/server/SensorPrivacyService;->getCurrentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/android/server/SensorPrivacyService;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService;->mAppOpsRestrictionToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/SensorPrivacyService;)Landroid/app/AppOpsManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService;->mSensorPrivacyManagerInternal:Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/SensorPrivacyService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/SensorPrivacyService;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/SensorPrivacyService;)Landroid/app/AppOpsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/SensorPrivacyService;->ACTION_DISABLE_INDIVIDUAL_SENSOR_PRIVACY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/SensorPrivacyService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/SensorPrivacyService;)Landroid/app/ActivityTaskManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/SensorPrivacyService;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method private forAllUsers(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getCurrentTimeMillis()J
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeMillis()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    return-wide v1
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/SensorPrivacyService;->mKeyguardManager:Landroid/app/KeyguardManager;

    new-instance v0, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;

    invoke-direct {v0, p0}, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;-><init>(Lcom/android/server/SensorPrivacyService;)V

    iput-object v0, p0, Lcom/android/server/SensorPrivacyService;->mEmergencyCallHelper:Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    const-string/jumbo v1, "sensor_privacy"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SensorPrivacyService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    new-instance v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;-><init>(Lcom/android/server/SensorPrivacyService;Lcom/android/server/SensorPrivacyService$1;)V

    iput-object v0, p0, Lcom/android/server/SensorPrivacyService;->mSensorPrivacyManagerInternal:Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;

    const-class v1, Landroid/hardware/SensorPrivacyManagerInternal;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SensorPrivacyService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    iget v0, p0, Lcom/android/server/SensorPrivacyService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    iput v0, p0, Lcom/android/server/SensorPrivacyService;->mCurrentUser:I

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->access$100(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;II)V

    :cond_0
    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    iput v0, p0, Lcom/android/server/SensorPrivacyService;->mCurrentUser:I

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->access$100(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;II)V

    return-void
.end method
