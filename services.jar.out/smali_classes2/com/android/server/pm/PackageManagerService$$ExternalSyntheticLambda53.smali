.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/android/server/pm/PackageSetting;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/content/IntentSender;

.field public final synthetic f$5:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;ILandroid/content/IntentSender;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;->f$2:Lcom/android/server/pm/PackageSetting;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;->f$3:I

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;->f$4:Landroid/content/IntentSender;

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;->f$5:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;->f$2:Lcom/android/server/pm/PackageSetting;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;->f$3:I

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;->f$4:Landroid/content/IntentSender;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;->f$5:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->lambda$installExistingPackageAsUser$45$PackageManagerService(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;ILandroid/content/IntentSender;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    return-void
.end method
