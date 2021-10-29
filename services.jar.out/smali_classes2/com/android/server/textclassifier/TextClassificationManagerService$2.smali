.class Lcom/android/server/textclassifier/TextClassificationManagerService$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "TextClassificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService;->startTrackingPackageChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private notifyPackageInstallStatusChange(Ljava/lang/String;Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->getChangingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$200(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v2, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$300(Lcom/android/server/textclassifier/TextClassificationManagerService;I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->access$500(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;Ljava/lang/String;)Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->access$700(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Z)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->notifyPackageInstallStatusChange(Ljava/lang/String;Z)V

    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->getChangingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$200(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v2, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$300(Lcom/android/server/textclassifier/TextClassificationManagerService;I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->access$500(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;Ljava/lang/String;)Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->access$600(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->notifyPackageInstallStatusChange(Ljava/lang/String;Z)V

    return-void
.end method
