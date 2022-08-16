.class public final Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;
.super Lcom/google/android/systemui/elmyra/actions/Action;
.source "SetupWizardAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;
    }
.end annotation


# instance fields
.field public final mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public mDeviceInDemoMode:Z

.field public final mKeyguardDeferredSetupListener:Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$2;

.field public final mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

.field public final mSettingsAction:Lcom/google/android/systemui/elmyra/actions/SettingsAction;

.field public final mSettingsPackageName:Ljava/lang/String;

.field public mUserCompletedSuw:Z

.field public final mUserSwitchCallback:Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/actions/SettingsAction;Lcom/google/android/systemui/elmyra/actions/LaunchOpa;Lcom/android/systemui/statusbar/phone/CentralSurfaces;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/elmyra/actions/Action;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    new-instance v0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$1;-><init>(Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mUserSwitchCallback:Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$1;

    new-instance v1, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$2;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$2;-><init>(Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;)V

    iput-object v1, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mKeyguardDeferredSetupListener:Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$2;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f130685

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mSettingsPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mSettingsAction:Lcom/google/android/systemui/elmyra/actions/SettingsAction;

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    iput-object p4, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    const-class p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance p2, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/google/android/systemui/elmyra/gates/Gate;->activate()V

    iput-object v1, p2, Lcom/google/android/systemui/elmyra/gates/Gate;->mListener:Lcom/google/android/systemui/elmyra/gates/Gate$Listener;

    iget-boolean p1, p2, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;->mDeferredSetupComplete:Z

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mUserCompletedSuw:Z

    return-void
.end method


# virtual methods
.method public final isAvailable()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mDeviceInDemoMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mUserCompletedSuw:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mSettingsAction:Lcom/google/android/systemui/elmyra/actions/SettingsAction;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final onProgress(IF)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->updateFeedbackEffects(IF)V

    return-void
.end method

.method public final onTrigger(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->collapseShade()V

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->triggerFeedbackEffects(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    iget-boolean p1, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mUserCompletedSuw:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mSettingsAction:Lcom/google/android/systemui/elmyra/actions/SettingsAction;

    invoke-virtual {p1}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.google.android.settings.ASSIST_GESTURE_TRAINING"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mSettingsPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x10008000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/Action;->mContext:Landroid/content/Context;

    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public final triggerFeedbackEffects(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/systemui/elmyra/actions/Action;->triggerFeedbackEffects(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/actions/Action;->triggerFeedbackEffects(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    return-void
.end method

.method public final updateFeedbackEffects(IF)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/systemui/elmyra/actions/Action;->updateFeedbackEffects(IF)V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/elmyra/actions/Action;->updateFeedbackEffects(IF)V

    return-void
.end method
