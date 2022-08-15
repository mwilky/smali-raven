.class public final synthetic Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/SurfaceControl$TransactionCommittedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

.field public final synthetic f$1:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

.field public final synthetic f$2:Landroid/view/SurfaceControl;

.field public final synthetic f$3:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    iput-object p3, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda3;->f$2:Landroid/view/SurfaceControl;

    iput-object p4, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    return-void
.end method


# virtual methods
.method public final onTransactionCommitted()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda3;->f$2:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->$r8$lambda$-XFXTKmXItPGTuNt3y9lNOMeN5c(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V

    return-void
.end method
