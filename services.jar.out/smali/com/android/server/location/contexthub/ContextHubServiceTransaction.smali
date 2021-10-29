.class abstract Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
.super Ljava/lang/Object;
.source "ContextHubServiceTransaction.java"


# instance fields
.field private mIsComplete:Z

.field private final mNanoAppId:Ljava/lang/Long;

.field private final mPackage:Ljava/lang/String;

.field private final mTransactionId:I

.field private final mTransactionType:I


# direct methods
.method constructor <init>(IIJLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mIsComplete:Z

    iput p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionId:I

    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNanoAppId:Ljava/lang/Long;

    iput-object p5, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mPackage:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mIsComplete:Z

    iput p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionId:I

    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNanoAppId:Ljava/lang/Long;

    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mPackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getTimeout(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    packed-switch v0, :pswitch_data_0

    const-wide/16 v0, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    const-wide/16 v0, 0x1e

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method getTransactionId()I
    .locals 1

    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionId:I

    return v0
.end method

.method getTransactionType()I
    .locals 1

    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    return v0
.end method

.method isComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mIsComplete:Z

    return v0
.end method

.method onQueryResponse(ILjava/util/List;)V
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

.method abstract onTransact()I
.end method

.method onTransactionComplete(I)V
    .locals 0

    return-void
.end method

.method setComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mIsComplete:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/hardware/location/ContextHubTransaction;->typeToString(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNanoAppId:Ljava/lang/Long;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "appId = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNanoAppId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "package = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
