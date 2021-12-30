.class abstract Lcom/android/settings/network/ims/ImsQueryController;
.super Ljava/lang/Object;
.source "ImsQueryController.java"


# instance fields
.field private volatile mCapability:I

.field private volatile mTech:I

.field private volatile mTransportType:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/network/ims/ImsQueryController;->mCapability:I

    iput p2, p0, Lcom/android/settings/network/ims/ImsQueryController;->mTech:I

    iput p3, p0, Lcom/android/settings/network/ims/ImsQueryController;->mTransportType:I

    return-void
.end method


# virtual methods
.method isEnabledByPlatform(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Landroid/telephony/ims/ImsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object p1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/ims/BooleanConsumer;

    invoke-direct {v1}, Lcom/android/settings/network/ims/BooleanConsumer;-><init>()V

    iget v2, p0, Lcom/android/settings/network/ims/ImsQueryController;->mCapability:I

    iget p0, p0, Lcom/android/settings/network/ims/ImsQueryController;->mTransportType:I

    invoke-virtual {p1, v2, p0, v0, v1}, Landroid/telephony/ims/ImsMmTelManager;->isSupported(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    const-wide/16 p0, 0x7d0

    invoke-virtual {v1, p0, p1}, Lcom/android/settings/network/ims/BooleanConsumer;->get(J)Z

    move-result p0

    return p0
.end method

.method isProvisionedOnDevice(I)Z
    .locals 2

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Lcom/android/settings/network/ims/ImsQueryProvisioningStat;

    iget v1, p0, Lcom/android/settings/network/ims/ImsQueryController;->mCapability:I

    iget p0, p0, Lcom/android/settings/network/ims/ImsQueryController;->mTech:I

    invoke-direct {v0, p1, v1, p0}, Lcom/android/settings/network/ims/ImsQueryProvisioningStat;-><init>(III)V

    invoke-virtual {v0}, Lcom/android/settings/network/ims/ImsQueryProvisioningStat;->query()Z

    move-result p0

    return p0
.end method

.method isServiceStateReady(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Landroid/telephony/ims/ImsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object p0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v1, Lcom/android/settings/network/ims/IntegerConsumer;

    invoke-direct {v1}, Lcom/android/settings/network/ims/IntegerConsumer;-><init>()V

    invoke-virtual {p0, p1, v1}, Landroid/telephony/ims/ImsMmTelManager;->getFeatureState(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    const-wide/16 p0, 0x7d0

    invoke-virtual {v1, p0, p1}, Lcom/android/settings/network/ims/IntegerConsumer;->get(J)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method isTtyOnVolteEnabled(I)Z
    .locals 0

    new-instance p0, Lcom/android/settings/network/ims/ImsQueryTtyOnVolteStat;

    invoke-direct {p0, p1}, Lcom/android/settings/network/ims/ImsQueryTtyOnVolteStat;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/settings/network/ims/ImsQueryTtyOnVolteStat;->query()Z

    move-result p0

    return p0
.end method
