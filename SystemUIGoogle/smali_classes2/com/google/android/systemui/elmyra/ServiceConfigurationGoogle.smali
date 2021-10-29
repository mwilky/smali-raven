.class public Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;
.super Ljava/lang/Object;
.source "ServiceConfigurationGoogle.java"

# interfaces
.implements Lcom/google/android/systemui/elmyra/ServiceConfiguration;


# instance fields
.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/systemui/elmyra/actions/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final mFeedbackEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final mGates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/systemui/elmyra/gates/Gate;",
            ">;"
        }
    .end annotation
.end field

.field private final mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;Lcom/google/android/systemui/elmyra/actions/SettingsAction$Builder;Lcom/google/android/systemui/elmyra/actions/CameraAction$Builder;Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;Lcom/google/android/systemui/elmyra/actions/SilenceCall;Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3, p2}, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;->addFeedbackEffect(Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;)Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;->build()Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/google/android/systemui/elmyra/actions/SettingsAction$Builder;->setLaunchOpa(Lcom/google/android/systemui/elmyra/actions/LaunchOpa;)Lcom/google/android/systemui/elmyra/actions/SettingsAction$Builder;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/systemui/elmyra/actions/SettingsAction$Builder;->build()Lcom/google/android/systemui/elmyra/actions/SettingsAction;

    move-result-object p4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/systemui/elmyra/actions/Action;

    new-instance v1, Lcom/google/android/systemui/elmyra/actions/DismissTimer;

    invoke-direct {v1, p1}, Lcom/google/android/systemui/elmyra/actions/DismissTimer;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/android/systemui/elmyra/actions/SnoozeAlarm;

    invoke-direct {v1, p1}, Lcom/google/android/systemui/elmyra/actions/SnoozeAlarm;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    aput-object p9, v0, v1

    const/4 p9, 0x3

    aput-object p4, v0, p9

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p9

    invoke-virtual {p5, p2}, Lcom/google/android/systemui/elmyra/actions/CameraAction$Builder;->addFeedbackEffect(Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;)Lcom/google/android/systemui/elmyra/actions/CameraAction$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/systemui/elmyra/actions/CameraAction$Builder;->build()Lcom/google/android/systemui/elmyra/actions/CameraAction;

    move-result-object p2

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;->mActions:Ljava/util/List;

    invoke-interface {p5, p9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p5, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p6, p4}, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;->setSettingsAction(Lcom/google/android/systemui/elmyra/actions/SettingsAction;)Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;

    move-result-object p6

    invoke-virtual {p6, p3}, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;->setLaunchOpa(Lcom/google/android/systemui/elmyra/actions/LaunchOpa;)Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;

    move-result-object p6

    invoke-virtual {p6}, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;->build()Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;

    move-result-object p6

    invoke-interface {p5, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;->mFeedbackEffects:Ljava/util/List;

    new-instance p5, Lcom/google/android/systemui/elmyra/feedback/HapticClick;

    invoke-direct {p5, p1}, Lcom/google/android/systemui/elmyra/feedback/HapticClick;-><init>(Landroid/content/Context;)V

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p5, Lcom/google/android/systemui/elmyra/feedback/NavUndimEffect;

    invoke-direct {p5}, Lcom/google/android/systemui/elmyra/feedback/NavUndimEffect;-><init>()V

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p5, Lcom/google/android/systemui/elmyra/feedback/UserActivity;

    invoke-direct {p5, p1}, Lcom/google/android/systemui/elmyra/feedback/UserActivity;-><init>(Landroid/content/Context;)V

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;->mGates:Ljava/util/List;

    new-instance p5, Lcom/google/android/systemui/elmyra/gates/WakeMode;

    invoke-direct {p5, p1}, Lcom/google/android/systemui/elmyra/gates/WakeMode;-><init>(Landroid/content/Context;)V

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p5, Lcom/google/android/systemui/elmyra/gates/ChargingState;

    invoke-direct {p5, p1}, Lcom/google/android/systemui/elmyra/gates/ChargingState;-><init>(Landroid/content/Context;)V

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p5, Lcom/google/android/systemui/elmyra/gates/UsbState;

    invoke-direct {p5, p1}, Lcom/google/android/systemui/elmyra/gates/UsbState;-><init>(Landroid/content/Context;)V

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p5, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;

    invoke-direct {p5, p1}, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;-><init>(Landroid/content/Context;)V

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p5, Lcom/google/android/systemui/elmyra/gates/SetupWizard;

    new-array p6, v3, [Lcom/google/android/systemui/elmyra/actions/Action;

    aput-object p4, p6, v2

    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-direct {p5, p1, p4}, Lcom/google/android/systemui/elmyra/gates/SetupWizard;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;

    invoke-direct {p4, p1, p9}, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;

    invoke-direct {p4, p1}, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;-><init>(Landroid/content/Context;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, p10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/google/android/systemui/elmyra/gates/VrMode;

    invoke-direct {p4, p1}, Lcom/google/android/systemui/elmyra/gates/VrMode;-><init>(Landroid/content/Context;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;

    invoke-direct {p4, p1, p9}, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;

    invoke-direct {p4, p1, p2, p9}, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;-><init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/actions/CameraAction;Ljava/util/List;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;-><init>(Landroid/content/Context;)V

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/google/android/systemui/elmyra/gates/LockTask;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/elmyra/gates/LockTask;-><init>(Landroid/content/Context;)V

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance p3, Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;

    invoke-direct {p3, p1}, Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;-><init>(Landroid/content/Context;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;

    invoke-direct {p3, p1, p2}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;-><init>(Landroid/content/Context;Ljava/util/List;)V

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
.method public getActions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/elmyra/actions/Action;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;->mActions:Ljava/util/List;

    return-object p0
.end method

.method public getFeedbackEffects()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;->mFeedbackEffects:Ljava/util/List;

    return-object p0
.end method

.method public getGates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/elmyra/gates/Gate;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;->mGates:Ljava/util/List;

    return-object p0
.end method

.method public getGestureSensor()Lcom/google/android/systemui/elmyra/sensors/GestureSensor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;->mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    return-object p0
.end method
