.class public Lcom/android/settings/network/helper/SelectableSubscriptions;
.super Ljava/lang/Object;
.source "SelectableSubscriptions.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/android/settings/network/helper/SubscriptionAnnotation;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/settings/network/helper/SubscriptionAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private mFinisher:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/util/List<",
            "Lcom/android/settings/network/helper/SubscriptionAnnotation;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settings/network/helper/SubscriptionAnnotation;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSubscriptions:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$98fXaBnlkBWTWj_4MiFv7JUmd4I(Lcom/android/settings/network/helper/SelectableSubscriptions;Landroid/content/Context;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/helper/SelectableSubscriptions;->lambda$new$0(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$G0yk5nbFvHFFWNkHnBVKMq3kYgs(Lcom/android/settings/network/helper/SubscriptionAnnotation;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/helper/SelectableSubscriptions;->lambda$new$3(Lcom/android/settings/network/helper/SubscriptionAnnotation;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KHG-RH7Scf9ab8_k_IIzFnzwSvI(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/helper/SelectableSubscriptions;->lambda$new$4(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VLNOC5FvGDfBbWjG-8emojCDH7s(Lcom/android/settings/network/helper/SelectableSubscriptions;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/settings/network/helper/SubscriptionAnnotation$Builder;)Lcom/android/settings/network/helper/SubscriptionAnnotation;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/network/helper/SelectableSubscriptions;->lambda$call$6(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/settings/network/helper/SubscriptionAnnotation$Builder;)Lcom/android/settings/network/helper/SubscriptionAnnotation;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_sX3nQFjGMpGYo-yOOqrd1hu6Sc(Lcom/android/settings/network/helper/SubscriptionAnnotation;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/helper/SelectableSubscriptions;->lambda$new$2(Lcom/android/settings/network/helper/SubscriptionAnnotation;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bJhD2_wcYAaaf7nHq4AhVTACqP8(Lcom/android/settings/network/helper/SelectableSubscriptions;Landroid/content/Context;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/helper/SelectableSubscriptions;->lambda$new$1(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eib6Lzt-C3sVNA6sednGkTH17OE(Ljava/util/concurrent/atomic/AtomicIntegerArray;I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/network/helper/SelectableSubscriptions;->lambda$atomicToList$7(Ljava/util/concurrent/atomic/AtomicIntegerArray;I)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jXknLLwRbjsIm9GHPq_FyGU17ow(Ljava/util/List;I)Lcom/android/settings/network/helper/SubscriptionAnnotation$Builder;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/network/helper/SelectableSubscriptions;->lambda$call$5(Ljava/util/List;I)Lcom/android/settings/network/helper/SubscriptionAnnotation$Builder;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/helper/SelectableSubscriptions;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda8;-><init>(Lcom/android/settings/network/helper/SelectableSubscriptions;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda9;-><init>(Lcom/android/settings/network/helper/SelectableSubscriptions;Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lcom/android/settings/network/helper/SelectableSubscriptions;->mSubscriptions:Ljava/util/function/Supplier;

    if-eqz p2, :cond_1

    sget-object p1, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda7;

    iput-object p1, p0, Lcom/android/settings/network/helper/SelectableSubscriptions;->mFilter:Ljava/util/function/Predicate;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda6;

    iput-object p1, p0, Lcom/android/settings/network/helper/SelectableSubscriptions;->mFilter:Ljava/util/function/Predicate;

    :goto_1
    sget-object p1, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda3;

    iput-object p1, p0, Lcom/android/settings/network/helper/SelectableSubscriptions;->mFinisher:Ljava/util/function/Function;

    return-void
.end method

.method protected static atomicToList(Ljava/util/concurrent/atomic/AtomicIntegerArray;)Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicIntegerArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda5;-><init>(Ljava/util/concurrent/atomic/AtomicIntegerArray;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static synthetic lambda$atomicToList$7(Ljava/util/concurrent/atomic/AtomicIntegerArray;I)I
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$call$5(Ljava/util/List;I)Lcom/android/settings/network/helper/SubscriptionAnnotation$Builder;
    .locals 1

    new-instance v0, Lcom/android/settings/network/helper/SubscriptionAnnotation$Builder;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/helper/SubscriptionAnnotation$Builder;-><init>(Ljava/util/List;I)V

    return-object v0
.end method

.method private synthetic lambda$call$6(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/settings/network/helper/SubscriptionAnnotation$Builder;)Lcom/android/settings/network/helper/SubscriptionAnnotation;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/helper/SelectableSubscriptions;->mContext:Landroid/content/Context;

    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/settings/network/helper/SubscriptionAnnotation$Builder;->build(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/android/settings/network/helper/SubscriptionAnnotation;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/network/helper/SelectableSubscriptions;->getAvailableSubInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$1(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/network/helper/SelectableSubscriptions;->getActiveSubInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$2(Lcom/android/settings/network/helper/SubscriptionAnnotation;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->isExisted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->isDisplayAllowed()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static synthetic lambda$new$3(Lcom/android/settings/network/helper/SubscriptionAnnotation;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->isActive()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$new$4(Ljava/util/List;)Ljava/util/List;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public addFinisher(Ljava/util/function/UnaryOperator;)Lcom/android/settings/network/helper/SelectableSubscriptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "Ljava/util/List<",
            "Lcom/android/settings/network/helper/SubscriptionAnnotation;",
            ">;>;)",
            "Lcom/android/settings/network/helper/SelectableSubscriptions;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/helper/SelectableSubscriptions;->mFinisher:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/helper/SelectableSubscriptions;->mFinisher:Ljava/util/function/Function;

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/network/helper/SelectableSubscriptions;->call()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/network/helper/SubscriptionAnnotation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/helper/SelectableSubscriptions;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_0
    new-instance v1, Lcom/android/settings/network/helper/QueryEsimCardId;

    invoke-direct {v1, v0}, Lcom/android/settings/network/helper/QueryEsimCardId;-><init>(Landroid/telephony/TelephonyManager;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    new-instance v2, Lcom/android/settings/network/helper/QuerySimSlotIndex;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, v3}, Lcom/android/settings/network/helper/QuerySimSlotIndex;-><init>(Landroid/telephony/TelephonyManager;ZZ)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    new-instance v4, Lcom/android/settings/network/helper/QuerySimSlotIndex;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v3}, Lcom/android/settings/network/helper/QuerySimSlotIndex;-><init>(Landroid/telephony/TelephonyManager;ZZ)V

    invoke-static {v4}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/network/helper/SelectableSubscriptions;->mSubscriptions:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-static {v1}, Lcom/android/settings/network/helper/SelectableSubscriptions;->atomicToList(Ljava/util/concurrent/atomic/AtomicIntegerArray;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-static {v2}, Lcom/android/settings/network/helper/SelectableSubscriptions;->atomicToList(Ljava/util/concurrent/atomic/AtomicIntegerArray;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-static {v0}, Lcom/android/settings/network/helper/SelectableSubscriptions;->atomicToList(Ljava/util/concurrent/atomic/AtomicIntegerArray;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v5, v4}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v4

    new-instance v5, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda4;

    invoke-direct {v5, v3}, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;)V

    invoke-interface {v4, v5}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/helper/SelectableSubscriptions;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/helper/SelectableSubscriptions;->mFilter:Ljava/util/function/Predicate;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/network/helper/SelectableSubscriptions;->mFinisher:Ljava/util/function/Function;

    invoke-static {v1, p0}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "SelectableSubscriptions"

    const-string v1, "Fail to request subIdList"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getActiveSubInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda1;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/network/helper/SelectableSubscriptions;->getSubInfoList(Landroid/content/Context;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getAvailableSubInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda2;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/network/helper/SelectableSubscriptions;->getSubInfoList(Landroid/content/Context;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getSubInfoList(Landroid/content/Context;Ljava/util/function/Function;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Function<",
            "Landroid/telephony/SubscriptionManager;",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/settings/network/helper/SelectableSubscriptions;->getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    :goto_0
    return-object p0
.end method

.method protected getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .locals 0

    const-class p0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    return-object p0
.end method
