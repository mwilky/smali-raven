.class Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;
.super Ljava/lang/Object;
.source "DeviceAdminStringProviderImpl.java"

# interfaces
.implements Lcom/android/settingslib/enterprise/DeviceAdminStringProvider;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public static synthetic $r8$lambda$A8G_7QBrMav5bqMSKvR_52oaSLM(Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->lambda$getDefaultDisabledByPolicyContent$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LtQ6nUSC53n0h2fn4hYE4rElirM(Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->lambda$getLearnMoreHelpPageUrl$2()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NdGrTfEWumKhBot-eoi7ts8gP4c(Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->lambda$getDefaultDisabledByPolicyTitle$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method private synthetic lambda$getDefaultDisabledByPolicyContent$1()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f0407ea

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDefaultDisabledByPolicyTitle$0()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f040851

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getLearnMoreHelpPageUrl$2()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f040a6e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDefaultDisabledByPolicyContent()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;)V

    const-string p0, "Settings.CONTACT_YOUR_IT_ADMIN"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultDisabledByPolicyTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;)V

    const-string p0, "Settings.DISABLED_BY_IT_ADMIN_TITLE"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisableCameraTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f040854

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisableScreenCaptureTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f040857

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisabledBiometricsParentConsentContent()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f040850

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisabledBiometricsParentConsentTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f040853

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisabledByPolicyTitleForFinancedDevice()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f040855

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisallowAdjustVolumeTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f040852

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisallowOutgoingCallsTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f040856

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisallowSmsTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f040858

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLearnMoreHelpPageUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;)V

    const-string p0, "Settings.IT_ADMIN_POLICY_DISABLING_INFO_URL"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSuspendPackagesTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f040859

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
