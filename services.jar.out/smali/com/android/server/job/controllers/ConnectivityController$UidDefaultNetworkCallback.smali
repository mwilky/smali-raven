.class Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UidDefaultNetworkCallback"
.end annotation


# instance fields
.field private mBlockedReasons:I

.field private mDefaultNetwork:Landroid/net/Network;

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method private constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;Lcom/android/server/job/controllers/ConnectivityController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;Landroid/util/IndentingPrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->setUid(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->clear()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;)I
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mBlockedReasons:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;)Landroid/net/Network;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;Landroid/net/Network;)Landroid/net/Network;
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    return-object p1
.end method

.method private clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    return-void
.end method

.method private dumpLocked(Landroid/util/IndentingPrintWriter;)V
    .locals 1

    const-string v0, "UID: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, "; "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    if-nez v0, :cond_0

    const-string v0, "No network"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Network: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " (blocked="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mBlockedReasons:I

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->blockedReasonsToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method private setUid(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default-onAvailable("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.Connectivity"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onBlockedStatusChanged(Landroid/net/Network;I)V
    .locals 3

    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "JobScheduler.Connectivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default-onBlockedStatusChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    iput p2, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mBlockedReasons:I

    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget v2, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    invoke-static {v1, v2, p1}, Lcom/android/server/job/controllers/ConnectivityController;->access$600(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4

    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "JobScheduler.Connectivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default-onLost("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget v2, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    invoke-static {v1, v2, p1}, Lcom/android/server/job/controllers/ConnectivityController;->access$600(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V

    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v2, v3}, Lcom/android/server/job/controllers/ConnectivityController;->access$1200(Lcom/android/server/job/controllers/ConnectivityController;J)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
