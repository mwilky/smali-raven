.class final Lcom/android/server/job/controllers/QuotaController$StandbyTracker;
.super Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StandbyTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAppIdleStateChanged$0$QuotaController$StandbyTracker(IILjava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketToBucketIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v1, p2, p3, v0}, Lcom/android/server/job/controllers/QuotaController;->updateStandbyBucket(ILjava/lang/String;I)V

    return-void
.end method

.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .locals 2

    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$StandbyTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p4, p2, p1}, Lcom/android/server/job/controllers/QuotaController$StandbyTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/QuotaController$StandbyTracker;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
