.class public Lcom/android/settingslib/enterprise/BiometricActionDisabledByAdminController;
.super Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;
.source "BiometricActionDisabledByAdminController.java"


# direct methods
.method public static synthetic $r8$lambda$e2s4me0T2my012jTElUbPZjvMTk(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/settingslib/enterprise/BiometricActionDisabledByAdminController;->lambda$getPositiveButtonListener$0(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method constructor <init>(Lcom/android/settingslib/enterprise/DeviceAdminStringProvider;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;-><init>(Lcom/android/settingslib/enterprise/DeviceAdminStringProvider;)V

    return-void
.end method

.method private static synthetic lambda$getPositiveButtonListener$0(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Positive button clicked, component: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BiometricActionDisabledByAdminController"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.MANAGE_RESTRICTED_SETTING"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "extra_setting"

    const-string v0, "biometric_disabled_by_admin_controller"

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getAdminSupportContentString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;->mStringProvider:Lcom/android/settingslib/enterprise/DeviceAdminStringProvider;

    invoke-interface {p0}, Lcom/android/settingslib/enterprise/DeviceAdminStringProvider;->getDisabledBiometricsParentConsentContent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAdminSupportTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;->mStringProvider:Lcom/android/settingslib/enterprise/DeviceAdminStringProvider;

    invoke-interface {p0}, Lcom/android/settingslib/enterprise/DeviceAdminStringProvider;->getDisabledBiometricsParentConsentTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPositiveButtonListener(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    new-instance p0, Lcom/android/settingslib/enterprise/BiometricActionDisabledByAdminController$$ExternalSyntheticLambda0;

    invoke-direct {p0, p2, p1}, Lcom/android/settingslib/enterprise/BiometricActionDisabledByAdminController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/content/Context;)V

    return-object p0
.end method

.method public setupLearnMoreButton(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
