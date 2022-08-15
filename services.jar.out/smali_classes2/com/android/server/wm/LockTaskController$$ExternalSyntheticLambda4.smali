.class public final synthetic Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/LockTaskController;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Lcom/android/server/wm/Task;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/LockTaskController;Landroid/content/Intent;Lcom/android/server/wm/Task;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/LockTaskController;

    iput-object p2, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda4;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/wm/Task;

    iput p4, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda4;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/LockTaskController;

    iget-object v1, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda4;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/wm/Task;

    iget p0, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda4;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/wm/LockTaskController;->$r8$lambda$gP6uI66C4IzUMBwkx_DdWEXOrn8(Lcom/android/server/wm/LockTaskController;Landroid/content/Intent;Lcom/android/server/wm/Task;I)V

    return-void
.end method
