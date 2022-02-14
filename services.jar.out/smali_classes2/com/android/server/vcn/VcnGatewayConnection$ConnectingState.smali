.class Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;
.super Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;
.source "VcnGatewayConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    return-void
.end method


# virtual methods
.method protected enterState()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$1400(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const-string v1, "ConnectingState entered with active session"

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$1800(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$1400(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;->kill()V

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$1402(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    :cond_0
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2100(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->buildIkeSession(Landroid/net/Network;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$1402(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    return-void
.end method

.method protected processStateMsg(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->logUnhandledMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->handleSafeModeTimeoutExceeded()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->handleDisconnectRequested(Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {v0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->deferMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectedState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {v0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->deferMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2100(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;

    iget-object v2, v2, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;->newUnderlying:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    invoke-static {v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2102(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const-string v2, "Old underlying network was null in connected state. Bug?"

    invoke-static {v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->access$1800(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2100(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v2, v1, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    invoke-virtual {v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2100(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->network:Landroid/net/Network;

    iget-object v2, v0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-virtual {v1, v2}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v1, v1, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->setSkipRetryTimeout(Z)V

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
