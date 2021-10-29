.class Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "LockdownVpnTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/LockdownVpnTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkCallback"
.end annotation


# instance fields
.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetwork:Landroid/net/Network;

.field final synthetic this$0:Lcom/android/server/net/LockdownVpnTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/net/LockdownVpnTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->mNetwork:Landroid/net/Network;

    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/net/LockdownVpnTracker;Lcom/android/server/net/LockdownVpnTracker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;-><init>(Lcom/android/server/net/LockdownVpnTracker;)V

    return-void
.end method


# virtual methods
.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method public getNetwork()Landroid/net/Network;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->mNetwork:Landroid/net/Network;

    const/4 v0, 0x1

    :cond_0
    iput-object p2, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-static {v1}, Lcom/android/server/net/LockdownVpnTracker;->access$200(Lcom/android/server/net/LockdownVpnTracker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-static {v2}, Lcom/android/server/net/LockdownVpnTracker;->access$300(Lcom/android/server/net/LockdownVpnTracker;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :goto_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->mNetwork:Landroid/net/Network;

    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-static {v0}, Lcom/android/server/net/LockdownVpnTracker;->access$200(Lcom/android/server/net/LockdownVpnTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-static {v1}, Lcom/android/server/net/LockdownVpnTracker;->access$300(Lcom/android/server/net/LockdownVpnTracker;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
