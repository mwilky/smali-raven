.class public final synthetic Lcom/android/server/wm/TaskFpsCallbackController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskFpsCallbackController;

.field public final synthetic f$1:Landroid/window/ITaskFpsCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskFpsCallbackController;Landroid/window/ITaskFpsCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskFpsCallbackController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TaskFpsCallbackController;

    iput-object p2, p0, Lcom/android/server/wm/TaskFpsCallbackController$$ExternalSyntheticLambda0;->f$1:Landroid/window/ITaskFpsCallback;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskFpsCallbackController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TaskFpsCallbackController;

    iget-object p0, p0, Lcom/android/server/wm/TaskFpsCallbackController$$ExternalSyntheticLambda0;->f$1:Landroid/window/ITaskFpsCallback;

    invoke-static {v0, p0}, Lcom/android/server/wm/TaskFpsCallbackController;->$r8$lambda$PsyRIE3ZugvWTfCRmIsjBNcoNAI(Lcom/android/server/wm/TaskFpsCallbackController;Landroid/window/ITaskFpsCallback;)V

    return-void
.end method
