.class public final synthetic Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/TaskView;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/TaskView;ILandroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/TaskView;

    iput p2, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda4;->f$2:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/TaskView;

    iget p0, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda4;->f$1:I

    iget-object v0, v0, Lcom/android/wm/shell/TaskView;->mListener:Lcom/android/wm/shell/TaskView$Listener;

    invoke-interface {v0, p0}, Lcom/android/wm/shell/TaskView$Listener;->onTaskCreated(I)V

    return-void
.end method
