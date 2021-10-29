.class public final synthetic Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityMetricsLogger;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger;JJILcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/ActivityMetricsLogger;

    iput-wide p2, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda1;->f$1:J

    iput-wide p4, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda1;->f$2:J

    iput p6, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda1;->f$3:I

    iput-object p7, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda1;->f$4:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    iput-boolean p8, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda1;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/ActivityMetricsLogger;

    iget-wide v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda1;->f$1:J

    iget-wide v3, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda1;->f$2:J

    iget v5, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda1;->f$3:I

    iget-object v6, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda1;->f$4:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    iget-boolean v7, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda1;->f$5:Z

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ActivityMetricsLogger;->lambda$logAppTransitionFinished$1$ActivityMetricsLogger(JJILcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;Z)V

    return-void
.end method
