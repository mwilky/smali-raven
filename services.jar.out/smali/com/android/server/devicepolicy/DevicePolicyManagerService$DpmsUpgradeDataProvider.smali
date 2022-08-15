.class public Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DpmsUpgradeDataProvider"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public static synthetic $r8$lambda$BZGTcXGaTWuVF-tKV_WPLFVwMDA(Landroid/content/pm/UserInfo;)I
    .locals 0

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;->lambda$getUsersForUpgrade$1(Landroid/content/pm/UserInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UZ6gjWVCFUkAD-hjeqebdfwvjgE(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;ILandroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;->lambda$getAdminInfoSupplier$0(ILandroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    return-void
.end method

.method private synthetic lambda$getAdminInfoSupplier$0(ILandroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;
    .locals 1

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v0, 0x0

    invoke-static {p0, p2, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mfindAdmin(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;IZ)Landroid/app/admin/DeviceAdminInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getUsersForUpgrade$1(Landroid/content/pm/UserInfo;)I
    .locals 0

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    return p0
.end method


# virtual methods
.method public getAdminInfoSupplier(I)Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/function/Function<",
            "Landroid/content/ComponentName;",
            "Landroid/app/admin/DeviceAdminInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;I)V

    return-object v0
.end method

.method public getUsersForUpgrade()[I
    .locals 1

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public makeDevicePoliciesJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 1

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string v0, "device_policies.xml"

    invoke-static {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mmakeJournaledFile(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ILjava/lang/String;)Lcom/android/internal/util/JournaledFile;

    move-result-object p0

    return-object p0
.end method

.method public makePoliciesVersionJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 1

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string v0, "device_policies_version"

    invoke-static {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mmakeJournaledFile(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ILjava/lang/String;)Lcom/android/internal/util/JournaledFile;

    move-result-object p0

    return-object p0
.end method

.method public storageManagerIsFileBasedEncryptionEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->storageManagerIsFileBasedEncryptionEnabled()Z

    move-result p0

    return p0
.end method
