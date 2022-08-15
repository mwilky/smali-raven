.class public final synthetic Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RecentsAnimationController;

.field public final synthetic f$1:Landroid/util/SparseBooleanArray;

.field public final synthetic f$2:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RecentsAnimationController;Landroid/util/SparseBooleanArray;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/wm/RecentsAnimationController;

    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda7;->f$1:Landroid/util/SparseBooleanArray;

    iput-object p3, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda7;->f$2:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    iput p4, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda7;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/wm/RecentsAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda7;->f$1:Landroid/util/SparseBooleanArray;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda7;->f$2:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    iget p0, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda7;->f$3:I

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->$r8$lambda$lHMlITmvmPHNCXv5vKMlpPCQDkI(Lcom/android/server/wm/RecentsAnimationController;Landroid/util/SparseBooleanArray;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;ILcom/android/server/wm/Task;)V

    return-void
.end method
