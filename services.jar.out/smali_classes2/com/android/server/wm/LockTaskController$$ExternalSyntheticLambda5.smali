.class public final synthetic Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/LockTaskController;

.field public final synthetic f$1:Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/LockTaskController;Lcom/android/server/wm/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/LockTaskController;

    iput-object p2, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/wm/Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/LockTaskController;

    iget-object p0, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/wm/Task;

    invoke-static {v0, p0}, Lcom/android/server/wm/LockTaskController;->$r8$lambda$MsyhWNjail7POwFQLWbhR7uH64w(Lcom/android/server/wm/LockTaskController;Lcom/android/server/wm/Task;)V

    return-void
.end method
