.class public final synthetic Lcom/android/server/wm/RootWindowContainer$FindTaskResult$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer$FindTaskResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->matchingCandidate(Lcom/android/server/wm/TaskFragment;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
