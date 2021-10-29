.class Lcom/google/android/systemui/elmyra/gates/LockTask$1;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "LockTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/gates/LockTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/LockTask;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/elmyra/gates/LockTask;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/LockTask$1;->this$0:Lcom/google/android/systemui/elmyra/gates/LockTask;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockTaskModeChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Elmyra/LockTask"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/gates/LockTask$1;->this$0:Lcom/google/android/systemui/elmyra/gates/LockTask;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/systemui/elmyra/gates/LockTask;->access$002(Lcom/google/android/systemui/elmyra/gates/LockTask;Z)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/elmyra/gates/LockTask$1;->this$0:Lcom/google/android/systemui/elmyra/gates/LockTask;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/systemui/elmyra/gates/LockTask;->access$002(Lcom/google/android/systemui/elmyra/gates/LockTask;Z)Z

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/LockTask$1;->this$0:Lcom/google/android/systemui/elmyra/gates/LockTask;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    return-void
.end method
