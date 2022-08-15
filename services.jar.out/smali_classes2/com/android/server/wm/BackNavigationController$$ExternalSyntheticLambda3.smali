.class public final synthetic Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/BackNavigationController;

.field public final synthetic f$1:Lcom/android/server/wm/WindowContainer;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/wm/Task;

.field public final synthetic f$4:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/BackNavigationController;Lcom/android/server/wm/WindowContainer;ILcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/BackNavigationController;

    iput-object p2, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/wm/WindowContainer;

    iput p3, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;->f$2:I

    iput-object p4, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/wm/Task;

    iput-object p5, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;->f$4:Lcom/android/server/wm/ActivityRecord;

    iput-boolean p6, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;->f$5:Z

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/BackNavigationController;

    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/wm/WindowContainer;

    iget v2, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;->f$2:I

    iget-object v3, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/wm/Task;

    iget-object v4, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;->f$4:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v5, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;->f$5:Z

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/wm/BackNavigationController;->$r8$lambda$94uVdDHa32offZAwiRTzL0cMGP4(Lcom/android/server/wm/BackNavigationController;Lcom/android/server/wm/WindowContainer;ILcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ZLandroid/os/Bundle;)V

    return-void
.end method
