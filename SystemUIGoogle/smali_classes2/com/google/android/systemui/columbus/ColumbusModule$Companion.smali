.class public final Lcom/google/android/systemui/columbus/ColumbusModule$Companion;
.super Ljava/lang/Object;
.source "ColumbusModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/columbus/ColumbusModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColumbusModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColumbusModule.kt\ncom/google/android/systemui/columbus/ColumbusModule$Companion\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,234:1\n37#2,2:235\n*E\n*S KotlinDebug\n*F\n+ 1 ColumbusModule.kt\ncom/google/android/systemui/columbus/ColumbusModule$Companion\n*L\n138#1,2:235\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusModule$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideBlockingSystemKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Integer;

    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/16 v0, 0x19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const/16 v0, 0x1a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    invoke-static {p0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final provideColumbusActions(Ljava/util/List;Lcom/google/android/systemui/columbus/actions/UnpinNotifications;Lcom/google/android/systemui/columbus/actions/UserSelectedAction;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;",
            "Lcom/google/android/systemui/columbus/actions/UnpinNotifications;",
            "Lcom/google/android/systemui/columbus/actions/UserSelectedAction;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;"
        }
    .end annotation

    const-string p0, "fullscreenActions"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "unpinNotifications"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "userSelectedAction"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/systemui/columbus/actions/Action;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/android/systemui/columbus/actions/Action;

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final provideColumbusEffects(Lcom/google/android/systemui/columbus/feedback/HapticClick;Lcom/google/android/systemui/columbus/feedback/UserActivity;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/columbus/feedback/HapticClick;",
            "Lcom/google/android/systemui/columbus/feedback/UserActivity;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;",
            ">;"
        }
    .end annotation

    const-string p0, "hapticClick"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "userActivity"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x2

    new-array p0, p0, [Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 p1, 0x1

    aput-object p2, p0, p1

    invoke-static {p0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final provideColumbusGates(Lcom/google/android/systemui/columbus/gates/FlagEnabled;Lcom/google/android/systemui/columbus/gates/ChargingState;Lcom/google/android/systemui/columbus/gates/UsbState;Lcom/google/android/systemui/columbus/gates/KeyguardProximity;Lcom/google/android/systemui/columbus/gates/SetupWizard;Lcom/google/android/systemui/columbus/gates/SystemKeyPress;Lcom/google/android/systemui/columbus/gates/TelephonyActivity;Lcom/google/android/systemui/columbus/gates/VrMode;Lcom/google/android/systemui/columbus/gates/CameraVisibility;Lcom/google/android/systemui/columbus/gates/PowerSaveState;Lcom/google/android/systemui/columbus/gates/PowerState;Lcom/google/android/systemui/columbus/gates/ScreenTouch;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/columbus/gates/FlagEnabled;",
            "Lcom/google/android/systemui/columbus/gates/ChargingState;",
            "Lcom/google/android/systemui/columbus/gates/UsbState;",
            "Lcom/google/android/systemui/columbus/gates/KeyguardProximity;",
            "Lcom/google/android/systemui/columbus/gates/SetupWizard;",
            "Lcom/google/android/systemui/columbus/gates/SystemKeyPress;",
            "Lcom/google/android/systemui/columbus/gates/TelephonyActivity;",
            "Lcom/google/android/systemui/columbus/gates/VrMode;",
            "Lcom/google/android/systemui/columbus/gates/CameraVisibility;",
            "Lcom/google/android/systemui/columbus/gates/PowerSaveState;",
            "Lcom/google/android/systemui/columbus/gates/PowerState;",
            "Lcom/google/android/systemui/columbus/gates/ScreenTouch;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/gates/Gate;",
            ">;"
        }
    .end annotation

    const-string p0, "flagEnabled"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "chargingState"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "usbState"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "keyguardProximity"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "setupWizard"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "systemKeyPress"

    invoke-static {p6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "telephonyActivity"

    invoke-static {p7, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "vrMode"

    invoke-static {p8, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "cameraVisibility"

    invoke-static {p9, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "powerSaveState"

    invoke-static {p10, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "powerState"

    invoke-static {p11, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "screenTouch"

    invoke-static {p12, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0xc

    new-array p0, p0, [Lcom/google/android/systemui/columbus/gates/Gate;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 p1, 0x1

    aput-object p2, p0, p1

    const/4 p1, 0x2

    aput-object p3, p0, p1

    const/4 p1, 0x3

    aput-object p4, p0, p1

    const/4 p1, 0x4

    aput-object p5, p0, p1

    const/4 p1, 0x5

    aput-object p6, p0, p1

    const/4 p1, 0x6

    aput-object p7, p0, p1

    const/4 p1, 0x7

    aput-object p8, p0, p1

    const/16 p1, 0x8

    aput-object p9, p0, p1

    const/16 p1, 0x9

    aput-object p10, p0, p1

    const/16 p1, 0xa

    aput-object p11, p0, p1

    const/16 p1, 0xb

    aput-object p12, p0, p1

    invoke-static {p0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final provideFullscreenActions(Lcom/google/android/systemui/columbus/actions/DismissTimer;Lcom/google/android/systemui/columbus/actions/SnoozeAlarm;Lcom/google/android/systemui/columbus/actions/SilenceCall;Lcom/google/android/systemui/columbus/actions/SettingsAction;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/columbus/actions/DismissTimer;",
            "Lcom/google/android/systemui/columbus/actions/SnoozeAlarm;",
            "Lcom/google/android/systemui/columbus/actions/SilenceCall;",
            "Lcom/google/android/systemui/columbus/actions/SettingsAction;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;"
        }
    .end annotation

    const-string p0, "dismissTimer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "snoozeAlarm"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "silenceCall"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "settingsAction"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x4

    new-array p0, p0, [Lcom/google/android/systemui/columbus/actions/Action;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 p1, 0x1

    aput-object p2, p0, p1

    const/4 p1, 0x2

    aput-object p3, p0, p1

    const/4 p1, 0x3

    aput-object p4, p0, p1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final provideGestureAdjustments(Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/sensors/config/Adjustment;",
            ">;"
        }
    .end annotation

    const-string p0, "lowSensitivitySettingAdjustment"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final provideGestureSensor(Landroid/content/Context;Lcom/google/android/systemui/columbus/ColumbusSettings;Ldagger/Lazy;Ldagger/Lazy;)Lcom/google/android/systemui/columbus/sensors/GestureSensor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/systemui/columbus/ColumbusSettings;",
            "Ldagger/Lazy<",
            "Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;",
            ">;)",
            "Lcom/google/android/systemui/columbus/sensors/GestureSensor;"
        }
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "columbusSettings"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "chreGestureSensor"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "apGestureSensor"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/systemui/columbus/ColumbusSettings;->useApSensor()Z

    move-result p0

    const-string p2, "Columbus/Module"

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "android.hardware.context_hub"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Creating CHRE sensor"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "{\n                Log.i(TAG, \"Creating CHRE sensor\")\n                chreGestureSensor.get()\n            }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "Creating AP sensor"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "{\n                Log.i(TAG, \"Creating AP sensor\")\n                apGestureSensor.get()\n            }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    :goto_1
    return-object p0
.end method

.method public final provideTransientGateDuration()J
    .locals 2

    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public final provideUserSelectedActions(Lcom/google/android/systemui/columbus/actions/LaunchOpa;Lcom/google/android/systemui/columbus/actions/ManageMedia;Lcom/google/android/systemui/columbus/actions/TakeScreenshot;Lcom/google/android/systemui/columbus/actions/LaunchOverview;Lcom/google/android/systemui/columbus/actions/OpenNotificationShade;Lcom/google/android/systemui/columbus/actions/LaunchApp;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/columbus/actions/LaunchOpa;",
            "Lcom/google/android/systemui/columbus/actions/ManageMedia;",
            "Lcom/google/android/systemui/columbus/actions/TakeScreenshot;",
            "Lcom/google/android/systemui/columbus/actions/LaunchOverview;",
            "Lcom/google/android/systemui/columbus/actions/OpenNotificationShade;",
            "Lcom/google/android/systemui/columbus/actions/LaunchApp;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/systemui/columbus/actions/UserAction;",
            ">;"
        }
    .end annotation

    const-string p0, "launchOpa"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "manageMedia"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "takeScreenshot"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "launchOverview"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "openNotificationShade"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "launchApp"

    invoke-static {p6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x6

    new-array p0, p0, [Lkotlin/Pair;

    new-instance v0, Lkotlin/Pair;

    const-string v1, "assistant"

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    aput-object v0, p0, p1

    new-instance p1, Lkotlin/Pair;

    const-string v0, "media"

    invoke-direct {p1, v0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, 0x1

    aput-object p1, p0, p2

    new-instance p1, Lkotlin/Pair;

    const-string p2, "screenshot"

    invoke-direct {p1, p2, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, 0x2

    aput-object p1, p0, p2

    new-instance p1, Lkotlin/Pair;

    const-string p2, "overview"

    invoke-direct {p1, p2, p4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, 0x3

    aput-object p1, p0, p2

    new-instance p1, Lkotlin/Pair;

    const-string p2, "notifications"

    invoke-direct {p1, p2, p5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, 0x4

    aput-object p1, p0, p2

    new-instance p1, Lkotlin/Pair;

    const-string p2, "launch"

    invoke-direct {p1, p2, p6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, 0x5

    aput-object p1, p0, p2

    invoke-static {p0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
