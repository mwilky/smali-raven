.class public final synthetic Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;

.field public final synthetic f$1:Lcom/android/server/wm/InsetsSourceProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;Lcom/android/server/wm/InsetsSourceProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;

    iput-object p2, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/wm/InsetsSourceProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/wm/InsetsSourceProvider;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->lambda$hideInsetSourceViewOverflows$1$WindowContainer$AnimationRunnerBuilder(Lcom/android/server/wm/InsetsSourceProvider;)V

    return-void
.end method
