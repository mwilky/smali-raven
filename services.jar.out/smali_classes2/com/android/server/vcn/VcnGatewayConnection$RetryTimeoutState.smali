.class Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;
.super Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;
.source "VcnGatewayConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RetryTimeoutState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$1;)V

    return-void
.end method

.method private getNextRetryIntervalsMs()J
    .locals 4

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3100(Lcom/android/server/vcn/VcnGatewayConnection;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2700(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/vcn/VcnGatewayConnectionConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getRetryIntervalsMillis()[J

    move-result-object v1

    array-length v2, v1

    if-lt v0, v2, :cond_0

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    return-wide v2

    :cond_0
    aget-wide v2, v1, v0

    return-wide v2
.end method


# virtual methods
.method protected enterState()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3108(Lcom/android/server/vcn/VcnGatewayConnection;)I

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2100(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const-string v1, "Underlying network was null in retry state"

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$1800(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->teardownNetwork()V

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectedState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->getNextRetryIntervalsMs()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3800(Lcom/android/server/vcn/VcnGatewayConnection;J)V

    :goto_0
    return-void
.end method

.method public exitState()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3900(Lcom/android/server/vcn/VcnGatewayConnection;)V

    return-void
.end method

.method protected processStateMsg(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->logUnhandledMessage(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->handleSafeModeTimeoutExceeded()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->handleDisconnectRequested(Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2100(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;

    iget-object v2, v2, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;->newUnderlying:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    invoke-static {v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2102(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2100(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->teardownNetwork()V

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v2, v1, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectedState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;

    invoke-virtual {v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2100(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->network:Landroid/net/Network;

    iget-object v2, v0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-virtual {v1, v2}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectingState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    nop

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x7 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method
