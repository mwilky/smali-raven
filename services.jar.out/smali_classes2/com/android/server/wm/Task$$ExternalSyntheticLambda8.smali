.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/io/PrintWriter;

.field public final synthetic f$5:Ljava/lang/Runnable;

.field public final synthetic f$6:Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Lcom/android/server/wm/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/Task;

    iput-object p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;->f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean p4, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;->f$3:Z

    iput-object p5, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;->f$4:Ljava/io/PrintWriter;

    iput-object p6, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;->f$5:Ljava/lang/Runnable;

    iput-object p7, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;->f$6:Lcom/android/server/wm/Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;->f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v3, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;->f$3:Z

    iget-object v4, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;->f$4:Ljava/io/PrintWriter;

    iget-object v5, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;->f$5:Ljava/lang/Runnable;

    iget-object v6, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;->f$6:Lcom/android/server/wm/Task;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/Task;->lambda$dumpActivities$28$Task(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Lcom/android/server/wm/Task;)V

    return-void
.end method
