.class Lcom/android/server/location/contexthub/ContextHubService$6;
.super Landroid/hardware/location/IContextHubTransactionCallback$Stub;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/contexthub/ContextHubService;->createLoadTransactionCallback(ILandroid/hardware/location/NanoAppBinary;)Landroid/hardware/location/IContextHubTransactionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubService;

.field final synthetic val$contextHubId:I

.field final synthetic val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;


# direct methods
.method constructor <init>(Lcom/android/server/location/contexthub/ContextHubService;ILandroid/hardware/location/NanoAppBinary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$6;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubService$6;->val$contextHubId:I

    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubService$6;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    invoke-direct {p0}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryResponse(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onTransactionComplete(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$6;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$6;->val$contextHubId:I

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService$6;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/location/contexthub/ContextHubService;->access$1000(Lcom/android/server/location/contexthub/ContextHubService;IILandroid/hardware/location/NanoAppBinary;)V

    return-void
.end method
