.class Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;
.super Landroid/telephony/PhoneStateListener;
.source "DataConnectionStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/DataConnectionStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneStateListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/DataConnectionStats;


# direct methods
.method constructor <init>(Lcom/android/server/am/DataConnectionStats;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public onDataActivity(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    invoke-static {v0}, Lcom/android/server/am/DataConnectionStats;->access$300(Lcom/android/server/am/DataConnectionStats;)V

    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    invoke-static {v0, p1}, Lcom/android/server/am/DataConnectionStats;->access$402(Lcom/android/server/am/DataConnectionStats;I)I

    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    invoke-static {v0}, Lcom/android/server/am/DataConnectionStats;->access$300(Lcom/android/server/am/DataConnectionStats;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    invoke-static {v0, p1}, Lcom/android/server/am/DataConnectionStats;->access$102(Lcom/android/server/am/DataConnectionStats;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/DataConnectionStats;->access$202(Lcom/android/server/am/DataConnectionStats;I)I

    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    invoke-static {v0}, Lcom/android/server/am/DataConnectionStats;->access$300(Lcom/android/server/am/DataConnectionStats;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    invoke-static {v0, p1}, Lcom/android/server/am/DataConnectionStats;->access$002(Lcom/android/server/am/DataConnectionStats;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    return-void
.end method
