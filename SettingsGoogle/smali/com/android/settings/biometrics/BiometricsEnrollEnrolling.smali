.class public abstract Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;
.super Lcom/android/settings/biometrics/BiometricEnrollBase;
.source "BiometricsEnrollEnrolling.java"

# interfaces
.implements Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;


# instance fields
.field protected mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelEnrollment()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->setListener(Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;)V

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->cancelEnrollment()Z

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    iput-object v1, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    :cond_0
    return-void
.end method

.method protected abstract getFinishIntent()Landroid/content/Intent;
.end method

.method protected abstract getSidecar()Lcom/android/settings/biometrics/BiometricEnrollSidecar;
.end method

.method protected launchFinish([B)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->getFinishIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x26000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mSensorId:I

    const-string v1, "sensor_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-wide v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mChallenge:J

    const-string p1, "challenge"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFromSettingsSummary:Z

    const-string v1, "from_settings_summary"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v1, -0x2710

    if-eq p1, v1, :cond_0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const p1, 0x7f07003a

    const v0, 0x7f07003b

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->cancelEnrollment()V

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onSkipButtonClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->cancelEnrollment()V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onStart()V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->shouldStartAutomatically()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->startEnrollment()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onStop()V

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->setListener(Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->cancelEnrollment()Z

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void
.end method

.method protected shouldFinishWhenBackgrounded()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract shouldStartAutomatically()Z
.end method

.method public startEnrollment()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "sidecar"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->getSidecar()Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->setListener(Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;)V

    return-void
.end method
