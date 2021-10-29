.class Lcom/android/server/devicepolicy/NetworkLogger$1;
.super Lcom/android/server/net/BaseNetdEventCallback;
.source "NetworkLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/NetworkLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/NetworkLogger;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/NetworkLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetdEventCallback;-><init>()V

    return-void
.end method

.method private sendNetworkEvent(Landroid/app/admin/NetworkEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v0}, Lcom/android/server/devicepolicy/NetworkLogger;->access$200(Lcom/android/server/devicepolicy/NetworkLogger;)Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "network_event"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v2}, Lcom/android/server/devicepolicy/NetworkLogger;->access$200(Lcom/android/server/devicepolicy/NetworkLogger;)Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private shouldLogNetworkEvent(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v0}, Lcom/android/server/devicepolicy/NetworkLogger;->access$300(Lcom/android/server/devicepolicy/NetworkLogger;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v0}, Lcom/android/server/devicepolicy/NetworkLogger;->access$300(Lcom/android/server/devicepolicy/NetworkLogger;)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public onConnectEvent(Ljava/lang/String;IJI)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v0}, Lcom/android/server/devicepolicy/NetworkLogger;->access$000(Lcom/android/server/devicepolicy/NetworkLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p5}, Lcom/android/server/devicepolicy/NetworkLogger$1;->shouldLogNetworkEvent(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/app/admin/ConnectEvent;

    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v1}, Lcom/android/server/devicepolicy/NetworkLogger;->access$100(Lcom/android/server/devicepolicy/NetworkLogger;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/app/admin/ConnectEvent;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/NetworkLogger$1;->sendNetworkEvent(Landroid/app/admin/NetworkEvent;)V

    return-void
.end method

.method public onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    .locals 10

    move-object v0, p0

    move/from16 v1, p9

    iget-object v2, v0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v2}, Lcom/android/server/devicepolicy/NetworkLogger;->access$000(Lcom/android/server/devicepolicy/NetworkLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/NetworkLogger$1;->shouldLogNetworkEvent(I)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    new-instance v2, Landroid/app/admin/DnsEvent;

    iget-object v3, v0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v3}, Lcom/android/server/devicepolicy/NetworkLogger;->access$100(Lcom/android/server/devicepolicy/NetworkLogger;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v7

    move-object v3, v2

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v3 .. v9}, Landroid/app/admin/DnsEvent;-><init>(Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;J)V

    invoke-direct {p0, v2}, Lcom/android/server/devicepolicy/NetworkLogger$1;->sendNetworkEvent(Landroid/app/admin/NetworkEvent;)V

    return-void
.end method
