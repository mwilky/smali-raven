.class public Lcom/android/settings/network/helper/QuerySimSlotIndex;
.super Ljava/lang/Object;
.source "QuerySimSlotIndex.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/concurrent/atomic/AtomicIntegerArray;",
        ">;"
    }
.end annotation


# instance fields
.field private mDisabledSlotsIncluded:Z

.field private mOnlySlotWithSim:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$DiJ2iRsYkdREp3DUZZ6wxQECVAk(Lcom/android/settings/network/helper/QuerySimSlotIndex;Landroid/telephony/UiccSlotInfo;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/helper/QuerySimSlotIndex;->lambda$call$1(Landroid/telephony/UiccSlotInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SjxHrUEdjIOI6wOYk3EPJMCadzo(II)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/network/helper/QuerySimSlotIndex;->lambda$call$2(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pvB9BuJwl6H97PMKGRS0qjJRz8M(Lcom/android/settings/network/helper/QuerySimSlotIndex;Landroid/telephony/UiccSlotInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/helper/QuerySimSlotIndex;->lambda$call$0(Landroid/telephony/UiccSlotInfo;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/telephony/TelephonyManager;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/helper/QuerySimSlotIndex;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-boolean p2, p0, Lcom/android/settings/network/helper/QuerySimSlotIndex;->mDisabledSlotsIncluded:Z

    iput-boolean p3, p0, Lcom/android/settings/network/helper/QuerySimSlotIndex;->mOnlySlotWithSim:Z

    return-void
.end method

.method private synthetic lambda$call$0(Landroid/telephony/UiccSlotInfo;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/network/helper/QuerySimSlotIndex;->filterSlot(Landroid/telephony/UiccSlotInfo;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$call$1(Landroid/telephony/UiccSlotInfo;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/network/helper/QuerySimSlotIndex;->mapToSlotIndex(Landroid/telephony/UiccSlotInfo;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$call$2(II)Z
    .locals 0

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/network/helper/QuerySimSlotIndex;->call()Ljava/util/concurrent/atomic/AtomicIntegerArray;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/util/concurrent/atomic/AtomicIntegerArray;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/network/helper/QuerySimSlotIndex;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-direct {p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    return-object p0

    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/network/helper/QuerySimSlotIndex;->mOnlySlotWithSim:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/android/settings/network/helper/QuerySimSlotIndex$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/settings/network/helper/QuerySimSlotIndex$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/helper/QuerySimSlotIndex;)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/android/settings/network/helper/QuerySimSlotIndex$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/settings/network/helper/QuerySimSlotIndex$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/network/helper/QuerySimSlotIndex;)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/helper/QuerySimSlotIndex$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lcom/android/settings/network/helper/QuerySimSlotIndex$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>([I)V

    return-object v2
.end method

.method protected filterSlot(Landroid/telephony/UiccSlotInfo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/network/helper/QuerySimSlotIndex;->mDisabledSlotsIncluded:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/UiccSlotInfo;->getIsActive()Z

    move-result p0

    return p0
.end method

.method protected mapToSlotIndex(Landroid/telephony/UiccSlotInfo;)I
    .locals 2

    const/4 p0, -0x1

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return p0

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/UiccSlotInfo;->getLogicalSlotIdx()I

    move-result p0

    return p0
.end method
