.class public final synthetic Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/compat/CompatConfig;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/compat/CompatConfig;Ljava/util/concurrent/atomic/AtomicBoolean;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/compat/CompatConfig;

    iput-object p2, p0, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-wide p3, p0, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda0;->f$2:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/compat/CompatConfig;

    iget-object v1, p0, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-wide v2, p0, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda0;->f$2:J

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/compat/CompatConfig;->lambda$registerListener$1$CompatConfig(Ljava/util/concurrent/atomic/AtomicBoolean;JLjava/lang/Long;)Lcom/android/server/compat/CompatChange;

    move-result-object p1

    return-object p1
.end method
