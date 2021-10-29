.class Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;
.super Ljava/lang/Object;
.source "VcnManagementService.java"

# interfaces
.implements Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VcnManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VcnSubscriptionTrackerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VcnManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/VcnManagementService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;-><init>(Lcom/android/server/VcnManagementService;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onNewSnapshot$0$VcnManagementService$VcnSubscriptionTrackerCallback(Landroid/os/ParcelUuid;Lcom/android/server/vcn/Vcn;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v0}, Lcom/android/server/VcnManagementService;->access$400(Lcom/android/server/VcnManagementService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v1}, Lcom/android/server/VcnManagementService;->access$900(Lcom/android/server/VcnManagementService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v1, p1}, Lcom/android/server/VcnManagementService;->access$1400(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;)V

    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/android/server/VcnManagementService;->access$1500(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onNewSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .locals 14

    iget-object v0, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v0}, Lcom/android/server/VcnManagementService;->access$400(Lcom/android/server/VcnManagementService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v1}, Lcom/android/server/VcnManagementService;->access$500(Lcom/android/server/VcnManagementService;)Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v2, p1}, Lcom/android/server/VcnManagementService;->access$502(Lcom/android/server/VcnManagementService;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "new snapshot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v4}, Lcom/android/server/VcnManagementService;->access$500(Lcom/android/server/VcnManagementService;)Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/VcnManagementService;->access$600(Lcom/android/server/VcnManagementService;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v2}, Lcom/android/server/VcnManagementService;->access$700(Lcom/android/server/VcnManagementService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    nop

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/vcn/VcnConfig;

    invoke-virtual {v5}, Landroid/net/vcn/VcnConfig;->getProvisioningPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->packageHasPermissionsForSubscriptionGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v5, v4, p1}, Lcom/android/server/VcnManagementService;->access$800(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v5}, Lcom/android/server/VcnManagementService;->access$900(Lcom/android/server/VcnManagementService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/vcn/VcnConfig;

    invoke-static {v5, v4, v6}, Lcom/android/server/VcnManagementService;->access$1000(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V

    :cond_0
    iget-object v5, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v5}, Lcom/android/server/VcnManagementService;->access$1100(Lcom/android/server/VcnManagementService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v6}, Lcom/android/server/VcnManagementService;->access$900(Lcom/android/server/VcnManagementService;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v2}, Lcom/android/server/VcnManagementService;->access$900(Lcom/android/server/VcnManagementService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    iget-object v5, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v5}, Lcom/android/server/VcnManagementService;->access$700(Lcom/android/server/VcnManagementService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/vcn/VcnConfig;

    iget-object v6, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v6, v4, p1}, Lcom/android/server/VcnManagementService;->access$800(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z

    move-result v6

    nop

    invoke-virtual {p1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getActiveDataSubscriptionId()I

    move-result v7

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v7, v4, p1}, Lcom/android/server/VcnManagementService;->access$800(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/net/vcn/VcnConfig;->getProvisioningPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v4, v8}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->packageHasPermissionsForSubscriptionGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/vcn/Vcn;

    iget-object v9, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v9}, Lcom/android/server/VcnManagementService;->access$500(Lcom/android/server/VcnManagementService;)Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/vcn/Vcn;->updateSubscriptionSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    goto :goto_5

    :cond_5
    :goto_3
    move-object v8, v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/vcn/Vcn;

    if-eqz v7, :cond_6

    const-wide/16 v10, 0x0

    goto :goto_4

    :cond_6
    sget-wide v10, Lcom/android/server/VcnManagementService;->CARRIER_PRIVILEGES_LOST_TEARDOWN_DELAY_MS:J

    :goto_4
    nop

    iget-object v12, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v12}, Lcom/android/server/VcnManagementService;->access$1100(Lcom/android/server/VcnManagementService;)Landroid/os/Handler;

    move-result-object v12

    new-instance v13, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback$$ExternalSyntheticLambda0;

    invoke-direct {v13, p0, v8, v9}, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;Landroid/os/ParcelUuid;Lcom/android/server/vcn/Vcn;)V

    invoke-virtual {v12, v13, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    nop

    :goto_5
    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v2, v1}, Lcom/android/server/VcnManagementService;->access$1200(Lcom/android/server/VcnManagementService;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v3}, Lcom/android/server/VcnManagementService;->access$500(Lcom/android/server/VcnManagementService;)Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/VcnManagementService;->access$1200(Lcom/android/server/VcnManagementService;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v4}, Lcom/android/server/VcnManagementService;->access$1300(Lcom/android/server/VcnManagementService;)V

    :cond_8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
