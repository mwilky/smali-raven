.class public final synthetic Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskSnapshotController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskSnapshotController;ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/TaskSnapshotController;

    iput p2, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/TaskSnapshotController;

    iget v1, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskSnapshotController;->lambda$screenTurningOff$2$TaskSnapshotController(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    return-void
.end method
