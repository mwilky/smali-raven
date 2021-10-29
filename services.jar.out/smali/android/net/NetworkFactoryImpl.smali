.class Landroid/net/NetworkFactoryImpl;
.super Landroid/net/NetworkFactoryLegacyImpl;
.source "NetworkFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;
    }
.end annotation


# static fields
.field private static final CMD_CANCEL_REQUEST:I = 0x2

.field private static final CMD_LISTEN_TO_ALL_REQUESTS:I = 0x6

.field private static final CMD_OFFER_NETWORK:I = 0x5

.field private static final CMD_REQUEST_NETWORK:I = 0x1

.field private static final CMD_SET_FILTER:I = 0x4

.field private static final CMD_SET_SCORE:I = 0x3

.field private static final DBG:Z = true

.field private static final INVINCIBLE_SCORE:Landroid/net/NetworkScore;

.field private static final VDBG:Z = false


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mNetworkRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/NetworkRequest;",
            "Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestCallback:Landroid/net/NetworkProvider$NetworkOfferCallback;

.field private mScore:Landroid/net/NetworkScore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/net/NetworkScore$Builder;

    invoke-direct {v0}, Landroid/net/NetworkScore$Builder;-><init>()V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/net/NetworkScore$Builder;->setLegacyInt(I)Landroid/net/NetworkScore$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    move-result-object v0

    sput-object v0, Landroid/net/NetworkFactoryImpl;->INVINCIBLE_SCORE:Landroid/net/NetworkScore;

    return-void
.end method

.method constructor <init>(Landroid/net/NetworkFactory;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;)V
    .locals 2

    nop

    if-eqz p4, :cond_0

    move-object v0, p4

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/net/NetworkCapabilities$Builder;->withoutDefaultCapabilities()Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/NetworkFactoryLegacyImpl;-><init>(Landroid/net/NetworkFactory;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkFactoryImpl;->mNetworkRequests:Ljava/util/Map;

    new-instance v0, Landroid/net/NetworkScore$Builder;

    invoke-direct {v0}, Landroid/net/NetworkScore$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkScore$Builder;->setLegacyInt(I)Landroid/net/NetworkScore$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkFactoryImpl;->mScore:Landroid/net/NetworkScore;

    new-instance v0, Landroid/net/NetworkFactoryImpl$1;

    invoke-direct {v0, p0}, Landroid/net/NetworkFactoryImpl$1;-><init>(Landroid/net/NetworkFactoryImpl;)V

    iput-object v0, p0, Landroid/net/NetworkFactoryImpl;->mRequestCallback:Landroid/net/NetworkProvider$NetworkOfferCallback;

    new-instance v0, Landroid/net/NetworkFactoryImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/net/NetworkFactoryImpl$$ExternalSyntheticLambda0;-><init>(Landroid/net/NetworkFactoryImpl;)V

    iput-object v0, p0, Landroid/net/NetworkFactoryImpl;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Landroid/net/NetworkFactoryImpl;Landroid/net/NetworkRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/NetworkFactoryImpl;->handleAddRequest(Landroid/net/NetworkRequest;)V

    return-void
.end method

.method static synthetic access$100(Landroid/net/NetworkFactoryImpl;Landroid/net/NetworkRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/NetworkFactoryImpl;->handleRemoveRequest(Landroid/net/NetworkRequest;)V

    return-void
.end method

.method private handleAddRequest(Landroid/net/NetworkRequest;)V
    .locals 4

    iget-object v0, p0, Landroid/net/NetworkFactoryImpl;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/net/NetworkFactoryImpl;->mParent:Landroid/net/NetworkFactory;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    new-instance v1, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;

    invoke-direct {v1, p1}, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;-><init>(Landroid/net/NetworkRequest;)V

    move-object v0, v1

    iget-object v1, p0, Landroid/net/NetworkFactoryImpl;->mNetworkRequests:Ljava/util/Map;

    iget-object v2, v0, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Landroid/net/NetworkFactoryImpl;->mParent:Landroid/net/NetworkFactory;

    invoke-virtual {v1, p1}, Landroid/net/NetworkFactory;->acceptRequest(Landroid/net/NetworkRequest;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;->requested:Z

    iget-object v1, p0, Landroid/net/NetworkFactoryImpl;->mParent:Landroid/net/NetworkFactory;

    invoke-virtual {v1, p1}, Landroid/net/NetworkFactory;->needNetworkFor(Landroid/net/NetworkRequest;)V

    :cond_1
    return-void
.end method

.method private handleOfferNetwork(Landroid/net/NetworkScore;)V
    .locals 4

    iget-object v0, p0, Landroid/net/NetworkFactoryImpl;->mProvider:Landroid/net/NetworkProvider;

    iget-object v1, p0, Landroid/net/NetworkFactoryImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    iget-object v2, p0, Landroid/net/NetworkFactoryImpl;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/net/NetworkFactoryImpl;->mRequestCallback:Landroid/net/NetworkProvider$NetworkOfferCallback;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/net/NetworkProvider;->registerNetworkOffer(Landroid/net/NetworkScore;Landroid/net/NetworkCapabilities;Ljava/util/concurrent/Executor;Landroid/net/NetworkProvider$NetworkOfferCallback;)V

    return-void
.end method

.method private handleRemoveRequest(Landroid/net/NetworkRequest;)V
    .locals 3

    iget-object v0, p0, Landroid/net/NetworkFactoryImpl;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/net/NetworkFactoryImpl;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, v0, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;->requested:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkFactoryImpl;->mParent:Landroid/net/NetworkFactory;

    iget-object v2, v0, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v1, v2}, Landroid/net/NetworkFactory;->releaseNetworkFor(Landroid/net/NetworkRequest;)V

    :cond_0
    return-void
.end method

.method private handleSetFilter(Landroid/net/NetworkCapabilities;)V
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkFactoryImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/net/NetworkFactoryImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    iget-object v0, p0, Landroid/net/NetworkFactoryImpl;->mParent:Landroid/net/NetworkFactory;

    invoke-virtual {v0}, Landroid/net/NetworkFactory;->reevaluateAllRequests()V

    return-void
.end method

.method private handleSetScore(Landroid/net/NetworkScore;)V
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkFactoryImpl;->mScore:Landroid/net/NetworkScore;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/net/NetworkFactoryImpl;->mScore:Landroid/net/NetworkScore;

    iget-object v0, p0, Landroid/net/NetworkFactoryImpl;->mParent:Landroid/net/NetworkFactory;

    invoke-virtual {v0}, Landroid/net/NetworkFactory;->reevaluateAllRequests()V

    return-void
.end method

.method private register(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Landroid/net/NetworkFactoryImpl;->mProvider:Landroid/net/NetworkProvider;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/net/NetworkFactoryImpl;->mParent:Landroid/net/NetworkFactory;

    const-string v1, "Registering NetworkFactory"

    invoke-virtual {v0, v1}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/net/NetworkFactoryImpl$2;

    iget-object v1, p0, Landroid/net/NetworkFactoryImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/net/NetworkFactoryImpl;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/net/NetworkFactoryImpl$2;-><init>(Landroid/net/NetworkFactoryImpl;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/NetworkFactoryImpl;->mProvider:Landroid/net/NetworkProvider;

    iget-object v0, p0, Landroid/net/NetworkFactoryImpl;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Landroid/net/NetworkFactoryImpl;->mProvider:Landroid/net/NetworkProvider;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkProvider(Landroid/net/NetworkProvider;)I

    if-eqz p2, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactoryImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactoryImpl;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactoryImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactoryImpl;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A NetworkFactory must only be registered once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Landroid/net/NetworkFactoryImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/NetworkFactoryImpl;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getRequestCount()I
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkFactoryImpl;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Landroid/net/NetworkFactoryImpl;->INVINCIBLE_SCORE:Landroid/net/NetworkScore;

    invoke-direct {p0, v0}, Landroid/net/NetworkFactoryImpl;->handleOfferNetwork(Landroid/net/NetworkScore;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/net/NetworkFactoryImpl;->mScore:Landroid/net/NetworkScore;

    invoke-direct {p0, v0}, Landroid/net/NetworkFactoryImpl;->handleOfferNetwork(Landroid/net/NetworkScore;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0}, Landroid/net/NetworkFactoryImpl;->handleSetFilter(Landroid/net/NetworkCapabilities;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkScore;

    invoke-direct {p0, v0}, Landroid/net/NetworkFactoryImpl;->handleSetScore(Landroid/net/NetworkScore;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    invoke-direct {p0, v0}, Landroid/net/NetworkFactoryImpl;->handleRemoveRequest(Landroid/net/NetworkRequest;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    invoke-direct {p0, v0}, Landroid/net/NetworkFactoryImpl;->handleAddRequest(Landroid/net/NetworkRequest;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic lambda$new$0$NetworkFactoryImpl(Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/NetworkFactoryImpl;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final reevaluateAllRequests()V
    .locals 5

    iget-object v0, p0, Landroid/net/NetworkFactoryImpl;->mProvider:Landroid/net/NetworkProvider;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/net/NetworkFactoryImpl;->mProvider:Landroid/net/NetworkProvider;

    iget-object v1, p0, Landroid/net/NetworkFactoryImpl;->mScore:Landroid/net/NetworkScore;

    iget-object v2, p0, Landroid/net/NetworkFactoryImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    iget-object v3, p0, Landroid/net/NetworkFactoryImpl;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/net/NetworkFactoryImpl;->mRequestCallback:Landroid/net/NetworkProvider$NetworkOfferCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/NetworkProvider;->registerNetworkOffer(Landroid/net/NetworkScore;Landroid/net/NetworkCapabilities;Ljava/util/concurrent/Executor;Landroid/net/NetworkProvider$NetworkOfferCallback;)V

    return-void
.end method

.method public register(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/NetworkFactoryImpl;->register(Ljava/lang/String;Z)V

    return-void
.end method

.method public registerIgnoringScore(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/net/NetworkFactoryImpl;->register(Ljava/lang/String;Z)V

    return-void
.end method

.method public setCapabilityFilter(Landroid/net/NetworkCapabilities;)V
    .locals 2

    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/net/NetworkFactoryImpl;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactoryImpl;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setScoreFilter(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/net/NetworkScore$Builder;

    invoke-direct {v0}, Landroid/net/NetworkScore$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/NetworkScore$Builder;->setLegacyInt(I)Landroid/net/NetworkScore$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactoryImpl;->setScoreFilter(Landroid/net/NetworkScore;)V

    return-void
.end method

.method public setScoreFilter(Landroid/net/NetworkScore;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/net/NetworkFactoryImpl;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactoryImpl;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "providerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkFactoryImpl;->mProvider:Landroid/net/NetworkProvider;

    invoke-virtual {v1}, Landroid/net/NetworkProvider;->getProviderId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ScoreFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkFactoryImpl;->mScore:Landroid/net/NetworkScore;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkFactoryImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkFactoryImpl;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
