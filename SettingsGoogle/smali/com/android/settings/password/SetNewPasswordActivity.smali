.class public Lcom/android/settings/password/SetNewPasswordActivity;
.super Landroid/app/Activity;
.source "SetNewPasswordActivity.java"

# interfaces
.implements Lcom/android/settings/password/SetNewPasswordController$Ui;


# instance fields
.field private mCallerAppName:Ljava/lang/String;

.field private mDevicePasswordRequirementOnly:Z

.field private mNewPasswordAction:Ljava/lang/String;

.field private mRequestedMinComplexity:I

.field private mSetNewPasswordController:Lcom/android/settings/password/SetNewPasswordController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mRequestedMinComplexity:I

    iput-boolean v0, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mDevicePasswordRequirementOnly:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mCallerAppName:Ljava/lang/String;

    return-void
.end method

.method private isCallingAppAdmin()Z
    .locals 3

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/password/PasswordUtils;->getCallingAppPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private logSetNewPasswordIntent()V
    .locals 7

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/password/PasswordUtils;->getCallingAppPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.app.extra.PASSWORD_COMPLEXITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "android.app.extra.DEVICE_PASSWORD_REQUIREMENT_ONLY"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    :cond_1
    or-int v6, v0, v2

    iget-object v0, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mNewPasswordAction:Ljava/lang/String;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x66d

    goto :goto_1

    :cond_2
    const/16 v0, 0x66e

    :goto_1
    move v3, v0

    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getAttribution(Landroid/app/Activity;)I

    move-result v2

    const/16 v4, 0x66c

    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public launchChooseLock(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/SetupChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mNewPasswordAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mCallerAppName:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v1, "caller_app_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget p1, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mRequestedMinComplexity:I

    if-eqz p1, :cond_2

    const-string v1, "requested_min_complexity"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->isCallingAppAdmin()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    const-string v1, "is_calling_app_admin"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    iget-boolean p1, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mDevicePasswordRequirementOnly:Z

    const-string v1, "device_password_requirement_only"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mNewPasswordAction:Ljava/lang/String;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "SetNewPasswordActivity"

    const-string v3, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mNewPasswordAction:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Unexpected action to launch this activity"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->logSetNewPasswordIntent()V

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/password/PasswordUtils;->getCallingAppLabel(Landroid/content/Context;Landroid/os/IBinder;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mCallerAppName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mNewPasswordAction:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    const-string v1, "android.app.extra.PASSWORD_COMPLEXITY"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "android.permission.REQUEST_PASSWORD_COMPLEXITY"

    invoke-static {p0, v0, v5}, Lcom/android/settings/password/PasswordUtils;->isCallingAppPermitted(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Landroid/app/admin/PasswordMetrics;->sanitizeComplexityLevel(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mRequestedMinComplexity:I

    goto :goto_0

    :cond_1
    const-string p1, "Must have permission android.permission.REQUEST_PASSWORD_COMPLEXITY to use extra android.app.extra.PASSWORD_COMPLEXITY"

    invoke-static {v0, p1}, Lcom/android/settings/password/PasswordUtils;->crashCallingApplication(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mNewPasswordAction:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "android.app.extra.DEVICE_PASSWORD_REQUIREMENT_ONLY"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mDevicePasswordRequirementOnly:Z

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "DEVICE_PASSWORD_REQUIREMENT_ONLY: %b"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {p0, p0, p1, v0}, Lcom/android/settings/password/SetNewPasswordController;->create(Landroid/content/Context;Lcom/android/settings/password/SetNewPasswordController$Ui;Landroid/content/Intent;Landroid/os/IBinder;)Lcom/android/settings/password/SetNewPasswordController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mSetNewPasswordController:Lcom/android/settings/password/SetNewPasswordController;

    invoke-virtual {p1}, Lcom/android/settings/password/SetNewPasswordController;->dispatchSetNewPasswordIntent()V

    return-void
.end method
