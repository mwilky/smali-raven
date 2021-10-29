.class Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;
.super Landroid/hardware/contexthub/V1_2/IContexthubCallback$Stub;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/ContextHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextHubServiceCallback"
.end annotation


# instance fields
.field private final mContextHubId:I

.field final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubService;


# direct methods
.method constructor <init>(Lcom/android/server/location/contexthub/ContextHubService;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-direct {p0}, Landroid/hardware/contexthub/V1_2/IContexthubCallback$Stub;-><init>()V

    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    return-void
.end method


# virtual methods
.method public handleAppAbort(JI)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubService;->access$300(Lcom/android/server/location/contexthub/ContextHubService;IJI)V

    return-void
.end method

.method public handleAppsInfo(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/contexthub/V1_0/HubAppInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toHubAppInfo_1_2(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/location/contexthub/ContextHubService;->access$400(Lcom/android/server/location/contexthub/ContextHubService;ILjava/util/List;)V

    return-void
.end method

.method public handleAppsInfo_1_2(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/contexthub/V1_2/HubAppInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static {v0, v1, p1}, Lcom/android/server/location/contexthub/ContextHubService;->access$400(Lcom/android/server/location/contexthub/ContextHubService;ILjava/util/List;)V

    return-void
.end method

.method public handleClientMsg(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/location/contexthub/ContextHubService;->access$000(Lcom/android/server/location/contexthub/ContextHubService;ILandroid/hardware/contexthub/V1_0/ContextHubMsg;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public handleClientMsg_1_2(Landroid/hardware/contexthub/V1_2/ContextHubMsg;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/contexthub/V1_2/ContextHubMsg;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    iget-object v2, p1, Landroid/hardware/contexthub/V1_2/ContextHubMsg;->msg_1_0:Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    iget-object v3, p1, Landroid/hardware/contexthub/V1_2/ContextHubMsg;->permissions:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3, p2}, Lcom/android/server/location/contexthub/ContextHubService;->access$000(Lcom/android/server/location/contexthub/ContextHubService;ILandroid/hardware/contexthub/V1_0/ContextHubMsg;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public handleHubEvent(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static {v0, v1, p1}, Lcom/android/server/location/contexthub/ContextHubService;->access$200(Lcom/android/server/location/contexthub/ContextHubService;II)V

    return-void
.end method

.method public handleTxnResult(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/location/contexthub/ContextHubService;->access$100(Lcom/android/server/location/contexthub/ContextHubService;III)V

    return-void
.end method
