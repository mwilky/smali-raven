.class public final synthetic Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskDisplayArea;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$2:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/TaskDisplayArea;

    iput-object p2, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda6;->f$1:Lcom/android/server/wm/ActivityRecord;

    iput-object p3, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda6;->f$2:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda6;->f$1:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda6;->f$2:[I

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/TaskDisplayArea;->lambda$pauseBackTasks$8$TaskDisplayArea(Lcom/android/server/wm/ActivityRecord;[ILcom/android/server/wm/Task;)V

    return-void
.end method
