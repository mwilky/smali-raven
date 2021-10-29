.class Lcom/android/server/companion/CompanionDeviceManagerService$UnbindDeviceListenersRunnable;
.super Ljava/lang/Object;
.source "CompanionDeviceManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/CompanionDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnbindDeviceListenersRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$UnbindDeviceListenersRunnable;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/server/companion/CompanionDeviceManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$UnbindDeviceListenersRunnable;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    return-void
.end method


# virtual methods
.method public getJobId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CDM_deviceGone_unbind_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnbindDeviceListenersRunnable.run(); devicesNearby = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$UnbindDeviceListenersRunnable;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$2600(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CompanionDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$UnbindDeviceListenersRunnable;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$2600(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$UnbindDeviceListenersRunnable;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$2600(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService$UnbindDeviceListenersRunnable;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v3}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$2600(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/android/server/companion/CompanionDeviceManagerService$UnbindDeviceListenersRunnable;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v4, v3}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$2700(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/companion/CompanionDeviceManagerService$UnbindDeviceListenersRunnable;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v4, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$2800(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/companion/Association;

    invoke-virtual {v5}, Landroid/companion/Association;->isNotifyOnDeviceNearby()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/companion/CompanionDeviceManagerService$UnbindDeviceListenersRunnable;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v6, v5}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$2900(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/Association;)Lcom/android/internal/infra/ServiceConnector;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/infra/ServiceConnector;->unbind()V

    :cond_0
    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
