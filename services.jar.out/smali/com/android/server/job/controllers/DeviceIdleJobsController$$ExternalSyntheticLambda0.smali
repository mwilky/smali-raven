.class public final synthetic Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

.field public final synthetic f$1:Landroid/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;Landroid/util/IndentingPrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iput-object p2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda0;->f$1:Landroid/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda0;->f$1:Landroid/util/IndentingPrintWriter;

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->lambda$dumpControllerStateLocked$1$DeviceIdleJobsController(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method
