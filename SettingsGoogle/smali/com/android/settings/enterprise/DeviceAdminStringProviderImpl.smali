.class Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;
.super Ljava/lang/Object;
.source "DeviceAdminStringProviderImpl.java"

# interfaces
.implements Lcom/android/settingslib/enterprise/DeviceAdminStringProvider;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getDefaultDisabledByPolicyContent()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f04078e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultDisabledByPolicyTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f0407f0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisableCameraTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f0407f3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisableScreenCaptureTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f0407f6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisabledBiometricsParentConsentContent()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f0407ef

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisabledBiometricsParentConsentTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f0407f2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisabledByPolicyTitleForFinancedDevice()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f0407f4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisallowAdjustVolumeTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f0407f1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisallowOutgoingCallsTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f0407f5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisallowSmsTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f0407f7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLearnMoreHelpPageUrl()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f0409ff

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSuspendPackagesTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f0407f8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
