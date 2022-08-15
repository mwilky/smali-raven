.class public final synthetic Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

.field public final synthetic f$1:Lcom/android/server/utils/quota/Uptc;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;Lcom/android/server/utils/quota/Uptc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    iput-object p2, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/utils/quota/Uptc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    iget-object p0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/utils/quota/Uptc;

    invoke-static {v0, p0}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;->$r8$lambda$KBQY6XP18mejmWyup2IX-Ahzr94(Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;Lcom/android/server/utils/quota/Uptc;)V

    return-void
.end method
