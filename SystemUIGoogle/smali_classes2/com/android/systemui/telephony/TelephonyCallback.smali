.class Lcom/android/systemui/telephony/TelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "TelephonyCallback.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;
.implements Landroid/telephony/TelephonyCallback$CallStateListener;
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;


# instance fields
.field private final mActiveDataSubscriptionIdListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyCallback$CallStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyCallback$ServiceStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$LyKejouXrE_8m1XWEURMrN8MNEw(ILandroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/telephony/TelephonyCallback;->lambda$onActiveDataSubscriptionIdChanged$0(ILandroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ustG0rlmL1bwIR5ioCfTJuO7y1E(ILandroid/telephony/TelephonyCallback$CallStateListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/telephony/TelephonyCallback;->lambda$onCallStateChanged$1(ILandroid/telephony/TelephonyCallback$CallStateListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vk_lKHWaAzI6c2pkXye62_KdExU(Landroid/telephony/ServiceState;Landroid/telephony/TelephonyCallback$ServiceStateListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/telephony/TelephonyCallback;->lambda$onServiceStateChanged$2(Landroid/telephony/ServiceState;Landroid/telephony/TelephonyCallback$ServiceStateListener;)V

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mActiveDataSubscriptionIdListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mCallStateListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mServiceStateListeners:Ljava/util/List;

    return-void
.end method

.method private static synthetic lambda$onActiveDataSubscriptionIdChanged$0(ILandroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;)V
    .locals 0

    invoke-interface {p1, p0}, Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;->onActiveDataSubscriptionIdChanged(I)V

    return-void
.end method

.method private static synthetic lambda$onCallStateChanged$1(ILandroid/telephony/TelephonyCallback$CallStateListener;)V
    .locals 0

    invoke-interface {p1, p0}, Landroid/telephony/TelephonyCallback$CallStateListener;->onCallStateChanged(I)V

    return-void
.end method

.method private static synthetic lambda$onServiceStateChanged$2(Landroid/telephony/ServiceState;Landroid/telephony/TelephonyCallback$ServiceStateListener;)V
    .locals 0

    invoke-interface {p1, p0}, Landroid/telephony/TelephonyCallback$ServiceStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method


# virtual methods
.method addActiveDataSubscriptionIdListener(Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mActiveDataSubscriptionIdListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addCallStateListener(Landroid/telephony/TelephonyCallback$CallStateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mCallStateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addServiceStateListener(Landroid/telephony/TelephonyCallback$ServiceStateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mServiceStateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method hasAnyListeners()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mActiveDataSubscriptionIdListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mCallStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mServiceStateListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onActiveDataSubscriptionIdChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mActiveDataSubscriptionIdListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mActiveDataSubscriptionIdListeners:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Lcom/android/systemui/telephony/TelephonyCallback$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lcom/android/systemui/telephony/TelephonyCallback$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v1, p0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onCallStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mCallStateListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mCallStateListeners:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Lcom/android/systemui/telephony/TelephonyCallback$$ExternalSyntheticLambda1;

    invoke-direct {p0, p1}, Lcom/android/systemui/telephony/TelephonyCallback$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v1, p0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mServiceStateListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mServiceStateListeners:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Lcom/android/systemui/telephony/TelephonyCallback$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1}, Lcom/android/systemui/telephony/TelephonyCallback$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v1, p0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method removeActiveDataSubscriptionIdListener(Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mActiveDataSubscriptionIdListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeCallStateListener(Landroid/telephony/TelephonyCallback$CallStateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mCallStateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeServiceStateListener(Landroid/telephony/TelephonyCallback$ServiceStateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mServiceStateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
