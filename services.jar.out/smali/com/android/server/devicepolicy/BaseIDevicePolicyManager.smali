.class abstract Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;
.super Landroid/app/admin/IDevicePolicyManager$Stub;
.source "BaseIDevicePolicyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acknowledgeDeviceCompliant()V
    .locals 0

    return-void
.end method

.method public canAdminGrantSensorsPermissionsForUser(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canProfileOwnerResetPasswordWhenLocked(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clearSystemUpdatePolicyFreezePeriodRecord()V
    .locals 0

    return-void
.end method

.method public createAndProvisionManagedProfile(Landroid/app/admin/ManagedProfileProvisioningParams;Ljava/lang/String;)Landroid/os/UserHandle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public finalizeWorkProfileProvisioning(Landroid/os/UserHandle;Landroid/accounts/Account;)V
    .locals 0

    return-void
.end method

.method public getDeviceOwnerType(Landroid/content/ComponentName;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEnrollmentSpecificId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getManagedProfileMaximumTimeOff(Landroid/content/ComponentName;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPersonalAppsSuspendedReasons(Landroid/content/ComponentName;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method abstract handleOnUserUnlocked(I)V
.end method

.method abstract handleStartUser(I)V
.end method

.method abstract handleStopUser(I)V
.end method

.method abstract handleUnlockUser(I)V
.end method

.method public isComplianceAcknowledgementRequired()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isKeyPairGrantedToWifiAuth(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOrganizationOwnedDeviceWithManagedProfile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public provisionFullyManagedDevice(Landroid/app/admin/FullyManagedDeviceProvisioningParams;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public resetDefaultCrossProfileIntentFilters(I)V
    .locals 0

    return-void
.end method

.method public setDeviceOwnerType(Landroid/content/ComponentName;I)V
    .locals 0

    return-void
.end method

.method public setDevicePolicySafetyChecker(Landroid/app/admin/DevicePolicySafetyChecker;)V
    .locals 3

    sget-object v0, Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDevicePolicySafetyChecker() not implemented by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setKeyGrantForApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setKeyGrantToWifiAuth(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setLocationEnabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setManagedProfileMaximumTimeOff(Landroid/content/ComponentName;J)V
    .locals 0

    return-void
.end method

.method public setOrganizationIdForUser(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public setPersonalAppsSuspended(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method abstract systemReady(I)V
.end method
