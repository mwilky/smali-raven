.class public final Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;
.super Ljava/lang/Object;
.source "CountQuotaTracker.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/quota/CountQuotaTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DeleteEventTimesFunctor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/util/LongArrayQueue;",
        ">;"
    }
.end annotation


# instance fields
.field public mMaxPeriodMs:J

.field public final synthetic this$0:Lcom/android/server/utils/quota/CountQuotaTracker;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmMaxPeriodMs(Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->mMaxPeriodMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mupdateMaxPeriod(Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->updateMaxPeriod()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/quota/CountQuotaTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->this$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/utils/quota/CountQuotaTracker;Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;-><init>(Lcom/android/server/utils/quota/CountQuotaTracker;)V

    return-void
.end method


# virtual methods
.method public accept(Landroid/util/LongArrayQueue;)V
    .locals 6

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->this$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    iget-object v2, v2, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/utils/quota/QuotaTracker$Injector;->getElapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->mMaxPeriodMs:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->removeFirst()J

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/LongArrayQueue;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->accept(Landroid/util/LongArrayQueue;)V

    return-void
.end method

.method public final updateMaxPeriod()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->this$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-static {v0}, Lcom/android/server/utils/quota/CountQuotaTracker;->-$$Nest$fgetmCategoryCountWindowSizesMs(Lcom/android/server/utils/quota/CountQuotaTracker;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->this$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-static {v3}, Lcom/android/server/utils/quota/CountQuotaTracker;->-$$Nest$fgetmCategoryCountWindowSizesMs(Lcom/android/server/utils/quota/CountQuotaTracker;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iput-wide v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->mMaxPeriodMs:J

    return-void
.end method
