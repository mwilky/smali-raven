.class Lcom/android/server/net/NetworkPolicyManagerService$17;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return v3

    :pswitch_1
    iget v0, v2, Landroid/os/Message;->arg1:I

    iget v3, v2, Landroid/os/Message;->arg2:I

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v8}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Landroid/net/INetworkPolicyListener;

    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v9, v8, v0, v5, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4100(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;III)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return v4

    :pswitch_2
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2900(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkStatsManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsManagerInternal;->forceUpdate()V

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    monitor-exit v3

    return v4

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_3
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/telephony/SubscriptionPlan;

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/net/INetworkPolicyListener;

    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v8, v7, v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4000(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;I[Landroid/telephony/SubscriptionPlan;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return v4

    :pswitch_4
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkTemplate;

    iget v5, v2, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_2

    move v3, v4

    :cond_2
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3900(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;Z)V

    return v4

    :pswitch_5
    iget v0, v2, Landroid/os/Message;->arg1:I

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5, v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3800(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/Set;I)V

    return v4

    :pswitch_6
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v13, v5

    check-cast v13, [I

    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    const/4 v5, 0x0

    move v15, v5

    :goto_2
    if-ge v15, v14, :cond_3

    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, v15}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Landroid/net/INetworkPolicyListener;

    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v6, v16

    move v7, v3

    move v8, v11

    move v9, v12

    move-object v10, v13

    invoke-static/range {v5 .. v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3700(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;III[I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_3
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return v4

    :pswitch_7
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-static {v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3600(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    return v4

    :pswitch_8
    iget v0, v2, Landroid/os/Message;->arg1:I

    iget v3, v2, Landroid/os/Message;->arg2:I

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_4

    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v8}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Landroid/net/INetworkPolicyListener;

    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v9, v8, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3200(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7, v0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3300(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/Boolean;)V

    :cond_5
    return v4

    :pswitch_9
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3400(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2900(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkStatsManagerInternal;

    move-result-object v5

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    move-object v6, v0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/net/NetworkStatsManagerInternal;->setStatsProviderWarningAndLimitAsync(Ljava/lang/String;JJ)V

    return v4

    :pswitch_a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;

    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->iface:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3400(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->iface:Ljava/lang/String;

    iget-wide v6, v0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->limit:J

    invoke-static {v3, v5, v6, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3500(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V

    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2900(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkStatsManagerInternal;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->iface:Ljava/lang/String;

    iget-wide v7, v0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->warning:J

    iget-wide v9, v0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->limit:J

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/net/NetworkStatsManagerInternal;->setStatsProviderWarningAndLimitAsync(Ljava/lang/String;JJ)V

    return v4

    :pswitch_b
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long v7, v5, v7

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2900(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkStatsManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lcom/android/server/net/NetworkStatsManagerInternal;->advisePersistThreshold(J)V

    return v4

    :pswitch_c
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_6

    move v3, v4

    :cond_6
    move v0, v3

    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v3, :cond_7

    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/net/INetworkPolicyListener;

    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7, v6, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return v4

    :pswitch_d
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfacesLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    monitor-exit v5

    return v4

    :cond_8
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2900(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkStatsManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsManagerInternal;->forceUpdate()V

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_2
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    monitor-exit v6

    return v4

    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :pswitch_e
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v3, :cond_9

    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/net/INetworkPolicyListener;

    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7, v6, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2800(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return v4

    :pswitch_f
    iget v0, v2, Landroid/os/Message;->arg1:I

    iget v3, v2, Landroid/os/Message;->arg2:I

    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_a

    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/net/INetworkPolicyListener;

    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v8, v7, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2700(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_a
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
