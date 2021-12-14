.class public final synthetic Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Runnable;

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/WindowContainer;->lambda$applyAnimationUnchecked$14(Ljava/lang/Runnable;ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method
