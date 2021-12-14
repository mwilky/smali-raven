.class public abstract Lcom/google/android/systemui/columbus/ColumbusModule;
.super Ljava/lang/Object;
.source "ColumbusModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/ColumbusModule$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/columbus/ColumbusModule$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/ColumbusModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/columbus/ColumbusModule;->Companion:Lcom/google/android/systemui/columbus/ColumbusModule$Companion;

    return-void
.end method

.method public static final provideBlockingSystemKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusModule;->Companion:Lcom/google/android/systemui/columbus/ColumbusModule$Companion;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/ColumbusModule$Companion;->provideBlockingSystemKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static final provideColumbusActions(Ljava/util/List;Lcom/google/android/systemui/columbus/actions/UnpinNotifications;Lcom/google/android/systemui/columbus/actions/UserSelectedAction;)Ljava/util/List;
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

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusModule;->Companion:Lcom/google/android/systemui/columbus/ColumbusModule$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/systemui/columbus/ColumbusModule$Companion;->provideColumbusActions(Ljava/util/List;Lcom/google/android/systemui/columbus/actions/UnpinNotifications;Lcom/google/android/systemui/columbus/actions/UserSelectedAction;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final provideColumbusEffects(Lcom/google/android/systemui/columbus/feedback/HapticClick;Lcom/google/android/systemui/columbus/feedback/UserActivity;)Ljava/util/Set;
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

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusModule;->Companion:Lcom/google/android/systemui/columbus/ColumbusModule$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/systemui/columbus/ColumbusModule$Companion;->provideColumbusEffects(Lcom/google/android/systemui/columbus/feedback/HapticClick;Lcom/google/android/systemui/columbus/feedback/UserActivity;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final provideColumbusGates(Lcom/google/android/systemui/columbus/gates/FlagEnabled;Lcom/google/android/systemui/columbus/gates/KeyguardProximity;Lcom/google/android/systemui/columbus/gates/SetupWizard;Lcom/google/android/systemui/columbus/gates/TelephonyActivity;Lcom/google/android/systemui/columbus/gates/VrMode;Lcom/google/android/systemui/columbus/gates/CameraVisibility;Lcom/google/android/systemui/columbus/gates/PowerSaveState;Lcom/google/android/systemui/columbus/gates/PowerState;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/columbus/gates/FlagEnabled;",
            "Lcom/google/android/systemui/columbus/gates/KeyguardProximity;",
            "Lcom/google/android/systemui/columbus/gates/SetupWizard;",
            "Lcom/google/android/systemui/columbus/gates/TelephonyActivity;",
            "Lcom/google/android/systemui/columbus/gates/VrMode;",
            "Lcom/google/android/systemui/columbus/gates/CameraVisibility;",
            "Lcom/google/android/systemui/columbus/gates/PowerSaveState;",
            "Lcom/google/android/systemui/columbus/gates/PowerState;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/gates/Gate;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusModule;->Companion:Lcom/google/android/systemui/columbus/ColumbusModule$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/systemui/columbus/ColumbusModule$Companion;->provideColumbusGates(Lcom/google/android/systemui/columbus/gates/FlagEnabled;Lcom/google/android/systemui/columbus/gates/KeyguardProximity;Lcom/google/android/systemui/columbus/gates/SetupWizard;Lcom/google/android/systemui/columbus/gates/TelephonyActivity;Lcom/google/android/systemui/columbus/gates/VrMode;Lcom/google/android/systemui/columbus/gates/CameraVisibility;Lcom/google/android/systemui/columbus/gates/PowerSaveState;Lcom/google/android/systemui/columbus/gates/PowerState;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static final provideColumbusSoftGates(Lcom/google/android/systemui/columbus/gates/ChargingState;Lcom/google/android/systemui/columbus/gates/UsbState;Lcom/google/android/systemui/columbus/gates/SystemKeyPress;Lcom/google/android/systemui/columbus/gates/ScreenTouch;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/columbus/gates/ChargingState;",
            "Lcom/google/android/systemui/columbus/gates/UsbState;",
            "Lcom/google/android/systemui/columbus/gates/SystemKeyPress;",
            "Lcom/google/android/systemui/columbus/gates/ScreenTouch;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/gates/Gate;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusModule;->Companion:Lcom/google/android/systemui/columbus/ColumbusModule$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/systemui/columbus/ColumbusModule$Companion;->provideColumbusSoftGates(Lcom/google/android/systemui/columbus/gates/ChargingState;Lcom/google/android/systemui/columbus/gates/UsbState;Lcom/google/android/systemui/columbus/gates/SystemKeyPress;Lcom/google/android/systemui/columbus/gates/ScreenTouch;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final provideFullscreenActions(Lcom/google/android/systemui/columbus/actions/DismissTimer;Lcom/google/android/systemui/columbus/actions/SnoozeAlarm;Lcom/google/android/systemui/columbus/actions/SilenceCall;Lcom/google/android/systemui/columbus/actions/SettingsAction;)Ljava/util/List;
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

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusModule;->Companion:Lcom/google/android/systemui/columbus/ColumbusModule$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/systemui/columbus/ColumbusModule$Companion;->provideFullscreenActions(Lcom/google/android/systemui/columbus/actions/DismissTimer;Lcom/google/android/systemui/columbus/actions/SnoozeAlarm;Lcom/google/android/systemui/columbus/actions/SilenceCall;Lcom/google/android/systemui/columbus/actions/SettingsAction;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final provideGestureAdjustments(Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;)Ljava/util/List;
    .locals 1
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

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusModule;->Companion:Lcom/google/android/systemui/columbus/ColumbusModule$Companion;

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/columbus/ColumbusModule$Companion;->provideGestureAdjustments(Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final provideGestureSensor(Landroid/content/Context;Lcom/google/android/systemui/columbus/ColumbusSettings;Ldagger/Lazy;Ldagger/Lazy;)Lcom/google/android/systemui/columbus/sensors/GestureSensor;
    .locals 1
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

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusModule;->Companion:Lcom/google/android/systemui/columbus/ColumbusModule$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/systemui/columbus/ColumbusModule$Companion;->provideGestureSensor(Landroid/content/Context;Lcom/google/android/systemui/columbus/ColumbusSettings;Ldagger/Lazy;Ldagger/Lazy;)Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    move-result-object p0

    return-object p0
.end method

.method public static final provideTransientGateDuration()J
    .locals 2

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusModule;->Companion:Lcom/google/android/systemui/columbus/ColumbusModule$Companion;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/ColumbusModule$Companion;->provideTransientGateDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final provideUserSelectedActions(Lcom/google/android/systemui/columbus/actions/LaunchOpa;Lcom/google/android/systemui/columbus/actions/ManageMedia;Lcom/google/android/systemui/columbus/actions/TakeScreenshot;Lcom/google/android/systemui/columbus/actions/LaunchOverview;Lcom/google/android/systemui/columbus/actions/OpenNotificationShade;Lcom/google/android/systemui/columbus/actions/LaunchApp;)Ljava/util/Map;
    .locals 7
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

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusModule;->Companion:Lcom/google/android/systemui/columbus/ColumbusModule$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/systemui/columbus/ColumbusModule$Companion;->provideUserSelectedActions(Lcom/google/android/systemui/columbus/actions/LaunchOpa;Lcom/google/android/systemui/columbus/actions/ManageMedia;Lcom/google/android/systemui/columbus/actions/TakeScreenshot;Lcom/google/android/systemui/columbus/actions/LaunchOverview;Lcom/google/android/systemui/columbus/actions/OpenNotificationShade;Lcom/google/android/systemui/columbus/actions/LaunchApp;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
