.class public final synthetic Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->lambda$build$2$WindowContainer$AnimationRunnerBuilder(ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method