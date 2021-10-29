.class Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;
.super Landroid/content/pm/CrossProfileAppsInternal;
.source "CrossProfileAppsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/CrossProfileAppsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    invoke-direct {p0}, Landroid/content/pm/CrossProfileAppsInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public getTargetUserProfiles(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->access$200(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setInteractAcrossProfilesAppOp(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->access$300(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;II)V

    return-void
.end method

.method public verifyPackageHasInteractAcrossProfilePermission(Ljava/lang/String;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->access$000(Lcom/android/server/pm/CrossProfileAppsServiceImpl;)Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->verifyUidHasInteractAcrossProfilePermission(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public verifyUidHasInteractAcrossProfilePermission(Ljava/lang/String;I)Z
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    const/4 v1, -0x1

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->access$100(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method
