.class final Lcom/android/server/devicestate/OverrideRequestController;
.super Ljava/lang/Object;
.source "OverrideRequestController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;,
        Lcom/android/server/devicestate/OverrideRequestController$RequestStatus;
    }
.end annotation


# static fields
.field static final STATUS_ACTIVE:I = 0x1

.field static final STATUS_CANCELED:I = 0x3

.field static final STATUS_SUSPENDED:I = 0x2

.field static final STATUS_UNKNOWN:I


# instance fields
.field private final mListener:Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;

.field private final mRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/devicestate/OverrideRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mStickyRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/devicestate/OverrideRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStickyRequestsAllowed:Z

.field private final mTmpRequestsToCancel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/devicestate/OverrideRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mTmpRequestsToCancel:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequests:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequests:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;

    return-void
.end method

.method private cancelRequestsLocked(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/devicestate/OverrideRequest;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequests:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/devicestate/OverrideRequestController;->getLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/OverrideRequest;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequests:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequests:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/server/devicestate/OverrideRequestController;->getLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicestate/OverrideRequest;

    if-eq v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;->onStatusChanged(Lcom/android/server/devicestate/OverrideRequest;I)V

    const/4 v1, 0x1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicestate/OverrideRequest;

    const/4 v5, 0x3

    invoke-interface {v3, v4, v5}, Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;->onStatusChanged(Lcom/android/server/devicestate/OverrideRequest;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static contains([II)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static getLast(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getRequestIndex(Landroid/os/IBinder;)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicestate/OverrideRequest;

    invoke-virtual {v3}, Lcom/android/server/devicestate/OverrideRequest;->getToken()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method static statusToString(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "CANCELED"

    return-object v0

    :pswitch_1
    const-string v0, "SUSPENDED"

    return-object v0

    :pswitch_2
    const-string v0, "ACTIVE"

    return-object v0

    :pswitch_3
    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method addRequest(Lcom/android/server/devicestate/OverrideRequest;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;->onStatusChanged(Lcom/android/server/devicestate/OverrideRequest;I)V

    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/OverrideRequest;

    iget-object v1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;

    invoke-interface {v1, v0, v2}, Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;->onStatusChanged(Lcom/android/server/devicestate/OverrideRequest;I)V

    :cond_0
    return-void
.end method

.method cancelRequest(Landroid/os/IBinder;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/devicestate/OverrideRequestController;->getRequestIndex(Landroid/os/IBinder;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/OverrideRequest;

    iget-object v2, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequests:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/server/devicestate/OverrideRequestController;->getLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicestate/OverrideRequest;

    iget-object v3, p0, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;->onStatusChanged(Lcom/android/server/devicestate/OverrideRequest;I)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;

    const/4 v3, 0x3

    invoke-interface {v2, v1, v3}, Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;->onStatusChanged(Lcom/android/server/devicestate/OverrideRequest;I)V

    return-void
.end method

.method cancelStickyRequests()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mTmpRequestsToCancel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mTmpRequestsToCancel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequests:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mTmpRequestsToCancel:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequestsLocked(Ljava/util/List;)Z

    return-void
.end method

.method dumpInternal(Ljava/io/PrintWriter;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override requests: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicestate/OverrideRequest;

    add-int/lit8 v3, v0, -0x1

    if-ne v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x2

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": mPid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/devicestate/OverrideRequest;->getPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mRequestedState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/devicestate/OverrideRequest;->getRequestedState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mFlags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/devicestate/OverrideRequest;->getFlags()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/devicestate/OverrideRequestController;->statusToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method handleBaseStateChanged()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mTmpRequestsToCancel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequests:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/devicestate/OverrideRequestController;->getLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/OverrideRequest;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicestate/OverrideRequest;

    invoke-virtual {v2}, Lcom/android/server/devicestate/OverrideRequest;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/devicestate/OverrideRequestController;->mTmpRequestsToCancel:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mTmpRequestsToCancel:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequestsLocked(Ljava/util/List;)Z

    move-result v1

    return v1
.end method

.method handleNewSupportedStates([I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mTmpRequestsToCancel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/OverrideRequest;

    invoke-virtual {v1}, Lcom/android/server/devicestate/OverrideRequest;->getRequestedState()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/server/devicestate/OverrideRequestController;->contains([II)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/devicestate/OverrideRequestController;->mTmpRequestsToCancel:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mTmpRequestsToCancel:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequestsLocked(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method handleProcessDied(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mTmpRequestsToCancel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequests:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/devicestate/OverrideRequestController;->getLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/OverrideRequest;

    iget-object v1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicestate/OverrideRequest;

    invoke-virtual {v2}, Lcom/android/server/devicestate/OverrideRequest;->getPid()I

    move-result v3

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Lcom/android/server/devicestate/OverrideRequestController;->mTmpRequestsToCancel:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequestsAllowed:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequests:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/devicestate/OverrideRequestController;->mTmpRequestsToCancel:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mTmpRequestsToCancel:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequestsLocked(Ljava/util/List;)Z

    return-void
.end method

.method hasRequest(Landroid/os/IBinder;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/devicestate/OverrideRequestController;->getRequestIndex(Landroid/os/IBinder;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setStickyRequestsAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequestsAllowed:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelStickyRequests()V

    :cond_0
    return-void
.end method
