.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Z[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;->f$0:Z

    iput-object p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;->f$1:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;->f$0:Z

    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;->f$1:[I

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/Task;->$r8$lambda$LY24xFg5gCT_qXYUQ9eBPyDoegQ(Z[ILcom/android/server/wm/TaskFragment;)V

    return-void
.end method
