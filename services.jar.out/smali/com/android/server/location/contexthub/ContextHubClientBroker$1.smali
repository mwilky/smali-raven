.class Lcom/android/server/location/contexthub/ContextHubClientBroker$1;
.super Landroid/hardware/location/IContextHubTransactionCallback$Stub;
.source "ContextHubClientBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/ContextHubClientBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;


# direct methods
.method constructor <init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$1;->this$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    invoke-direct {p0}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryResponse(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "ContextHubClientBroker"

    const-string v1, "Permissions query failed, but still received nanoapp state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/NanoAppState;

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$1;->this$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    invoke-static {v2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->access$000(Lcom/android/server/location/contexthub/ContextHubClientBroker;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Landroid/hardware/location/NanoAppState;->getNanoAppId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/hardware/location/NanoAppState;->getNanoAppPermissions()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$1;->this$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    invoke-virtual {v1}, Landroid/hardware/location/NanoAppState;->getNanoAppId()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v2, v6}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->access$100(Lcom/android/server/location/contexthub/ContextHubClientBroker;JLjava/util/List;Z)I

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onTransactionComplete(I)V
    .locals 0

    return-void
.end method
