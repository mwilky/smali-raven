.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>([ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda37;->f$0:[I

    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda37;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda37;->f$0:[I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda37;->f$1:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/DisplayContent;->lambda$removeRootTasksWithActivityTypes$39([ILjava/util/ArrayList;Lcom/android/server/wm/Task;)V

    return-void
.end method
