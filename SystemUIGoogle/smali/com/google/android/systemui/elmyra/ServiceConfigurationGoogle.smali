.class public final Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;
.super Ljava/lang/Object;
.source "ServiceConfigurationGoogle.java"

# interfaces
.implements Lcom/google/android/systemui/elmyra/ServiceConfiguration;


# instance fields
.field public final mActions:Ljava/util/ArrayList;

.field public final mFeedbackEffects:Ljava/util/ArrayList;

.field public final mGates:Ljava/util/ArrayList;

.field public final mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;Lcom/google/android/systemui/elmyra/actions/SettingsAction$Builder;Lcom/google/android/systemui/elmyra/actions/CameraAction$Builder;Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;Lcom/google/android/systemui/elmyra/actions/SilenceCall;Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p3, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;->mFeedbackEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    iget-object v1, p3, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p3, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iget-object p3, p3, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;->mFeedbackEffects:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p3}, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Ljava/util/ArrayList;)V

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/google/android/systemui/elmyra/actions/SettingsAction;

    iget-object v1, p4, Lcom/google/android/systemui/elmyra/actions/SettingsAction$Builder;->mContext:Landroid/content/Context;

    iget-object p4, p4, Lcom/google/android/systemui/elmyra/actions/SettingsAction$Builder;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-direct {p3, v1, p4, v0}, Lcom/google/android/systemui/elmyra/actions/SettingsAction;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/google/android/systemui/elmyra/actions/LaunchOpa;)V

    const/4 p4, 0x4

    new-array p4, p4, [Lcom/google/android/systemui/elmyra/actions/Action;

    new-instance v1, Lcom/google/android/systemui/elmyra/actions/DismissTimer;

    invoke-direct {v1, p1}, Lcom/google/android/systemui/elmyra/actions/DismissTimer;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    aput-object v1, p4, v2

    new-instance v1, Lcom/google/android/systemui/elmyra/actions/SnoozeAlarm;

    invoke-direct {v1, p1}, Lcom/google/android/systemui/elmyra/actions/SnoozeAlarm;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    aput-object v1, p4, v3

    const/4 v1, 0x2

    aput-object p9, p4, v1

    const/4 p9, 0x3

    aput-object p3, p4, p9

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    iget-object p9, p5, Lcom/google/android/systemui/elmyra/actions/CameraAction$Builder;->mFeedbackEffects:Ljava/util/ArrayList;

    invoke-virtual {p9, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/google/android/systemui/elmyra/actions/CameraAction;

    iget-object p9, p5, Lcom/google/android/systemui/elmyra/actions/CameraAction$Builder;->mContext:Landroid/content/Context;

    iget-object v1, p5, Lcom/google/android/systemui/elmyra/actions/CameraAction$Builder;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iget-object p5, p5, Lcom/google/android/systemui/elmyra/actions/CameraAction$Builder;->mFeedbackEffects:Ljava/util/ArrayList;

    invoke-direct {p2, p9, v1, p5}, Lcom/google/android/systemui/elmyra/actions/CameraAction;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Ljava/util/ArrayList;)V

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;->mActions:Ljava/util/ArrayList;

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p5, p8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p8, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;

    iget-object p9, p6, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;->mContext:Landroid/content/Context;

    iget-object p6, p6, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-direct {p8, p9, p3, v0, p6}, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;-><init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/actions/SettingsAction;Lcom/google/android/systemui/elmyra/actions/LaunchOpa;Lcom/android/systemui/statusbar/phone/CentralSurfaces;)V

    invoke-virtual {p5, p8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;->mFeedbackEffects:Ljava/util/ArrayList;

    new-instance p6, Lcom/google/android/systemui/elmyra/feedback/HapticClick;

    invoke-direct {p6, p1}, Lcom/google/android/systemui/elmyra/feedback/HapticClick;-><init>(Landroid/content/Context;)V

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p5, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p6, Lcom/google/android/systemui/elmyra/feedback/NavUndimEffect;

    invoke-direct {p6}, Lcom/google/android/systemui/elmyra/feedback/NavUndimEffect;-><init>()V

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p6, Lcom/google/android/systemui/elmyra/feedback/UserActivity;

    invoke-direct {p6, p1}, Lcom/google/android/systemui/elmyra/feedback/UserActivity;-><init>(Landroid/content/Context;)V

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;->mGates:Ljava/util/ArrayList;

    new-instance p6, Lcom/google/android/systemui/elmyra/gates/WakeMode;

    invoke-direct {p6, p1}, Lcom/google/android/systemui/elmyra/gates/WakeMode;-><init>(Landroid/content/Context;)V

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p6, Lcom/google/android/systemui/elmyra/gates/ChargingState;

    invoke-direct {p6, p1}, Lcom/google/android/systemui/elmyra/gates/ChargingState;-><init>(Landroid/content/Context;)V

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p6, Lcom/google/android/systemui/elmyra/gates/UsbState;

    invoke-direct {p6, p1}, Lcom/google/android/systemui/elmyra/gates/UsbState;-><init>(Landroid/content/Context;)V

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p6, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;

    invoke-direct {p6, p1}, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;-><init>(Landroid/content/Context;)V

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p6, Lcom/google/android/systemui/elmyra/gates/SetupWizard;

    new-array p7, v3, [Lcom/google/android/systemui/elmyra/actions/Action;

    aput-object p3, p7, v2

    invoke-static {p7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p6, p1, p3}, Lcom/google/android/systemui/elmyra/gates/SetupWizard;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;

    invoke-direct {p3, p1, p4}, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;

    invoke-direct {p3, p1}, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;-><init>(Landroid/content/Context;)V

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p5, p10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/google/android/systemui/elmyra/gates/VrMode;

    invoke-direct {p3, p1}, Lcom/google/android/systemui/elmyra/gates/VrMode;-><init>(Landroid/content/Context;)V

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;

    invoke-direct {p3, p1, p4}, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;

    invoke-direct {p3, p1, p2, p4}, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;-><init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/actions/CameraAction;Ljava/util/List;)V

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;-><init>(Landroid/content/Context;)V

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/google/android/systemui/elmyra/gates/LockTask;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/elmyra/gates/LockTask;-><init>(Landroid/content/Context;)V

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance p3, Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;

    invoke-direct {p3, p1}, Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;

    invoke-direct {p3, p1, p2}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {p1}, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->isAvailable(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;

    invoke-direct {p2, p1, p3}, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;-><init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;)V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;->mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;

    new-instance p4, Lcom/google/android/systemui/elmyra/SnapshotConfiguration;

    invoke-direct {p4, p1}, Lcom/google/android/systemui/elmyra/SnapshotConfiguration;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;-><init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;Lcom/google/android/systemui/elmyra/SnapshotConfiguration;)V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;->mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    :goto_0
    return-void
.end method


# virtual methods
.method public final getActions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/elmyra/actions/Action;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;->mActions:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getFeedbackEffects()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;->mFeedbackEffects:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getGates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/elmyra/gates/Gate;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;->mGates:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getGestureSensor()Lcom/google/android/systemui/elmyra/sensors/GestureSensor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;->mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    return-object p0
.end method
