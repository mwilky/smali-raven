.class public final synthetic Lcom/android/wm/shell/common/ExecutorUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;

.field public final synthetic f$1:Lcom/android/wm/shell/common/RemoteCallable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Lcom/android/wm/shell/common/RemoteCallable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/ExecutorUtils$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/wm/shell/common/ExecutorUtils$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/common/RemoteCallable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/common/ExecutorUtils$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/wm/shell/common/ExecutorUtils$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/common/RemoteCallable;

    invoke-static {v0, p0}, Lcom/android/wm/shell/common/ExecutorUtils;->$r8$lambda$ie9__-9r8EAIXQD67CKIgDXd9z8(Ljava/util/function/Consumer;Lcom/android/wm/shell/common/RemoteCallable;)V

    return-void
.end method
