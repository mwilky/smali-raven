.class Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;
.super Ljava/lang/Object;
.source "LegacySplitScreenController.java"

# interfaces
.implements Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SplitScreenImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;


# direct methods
.method public static synthetic $r8$lambda$2GLQVWp0qxToZztKDv6a5j4RBUw(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;->lambda$onKeyguardVisibilityChanged$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$69oRqAP50a6ck84gKkyZnx7h-DY(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;->lambda$registerInSplitScreenListener$5(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FrfCQPqGltjhBk8a-yhidCh2vvA(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;->lambda$onUndockingTask$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$L350Dt7C9Q7Qw9kFS1w_eKeTkME(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;[Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;->lambda$splitPrimaryTask$9([Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$SNhoY5lDSrc-bu_d4hAenEqE3ec(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;->lambda$registerBoundsChangeListener$7(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZX1nZMCgM5glco2Af7RY7fG02KE(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;[Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;->lambda$isDividerVisible$0([Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZkkUxcEcSpT5z4tnc6Yd_cassco(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;->lambda$setMinimized$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$btF6ezykEruzRj0qPxieDjjKCP8(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;->lambda$onAppTransitionFinished$4()V

    return-void
.end method

.method private constructor <init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V

    return-void
.end method

.method private synthetic lambda$isDividerVisible$0([Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isDividerVisible()Z

    move-result p0

    const/4 v0, 0x0

    aput-boolean p0, p1, v0

    return-void
.end method

.method private synthetic lambda$onAppTransitionFinished$4()V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->onAppTransitionFinished()V

    return-void
.end method

.method private synthetic lambda$onKeyguardVisibilityChanged$1(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->onKeyguardVisibilityChanged(Z)V

    return-void
.end method

.method private synthetic lambda$onUndockingTask$3()V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->onUndockingTask()V

    return-void
.end method

.method private synthetic lambda$registerBoundsChangeListener$7(Ljava/util/function/BiConsumer;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->registerBoundsChangeListener(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private synthetic lambda$registerInSplitScreenListener$5(Ljava/util/function/Consumer;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->registerInSplitScreenListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$setMinimized$2(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->setMinimized(Z)V

    return-void
.end method

.method private synthetic lambda$splitPrimaryTask$9([Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->splitPrimaryTask()Z

    move-result p0

    const/4 v0, 0x0

    aput-boolean p0, p1, v0

    return-void
.end method


# virtual methods
.method public getDividerView()Lcom/android/wm/shell/legacysplitscreen/DividerView;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getDividerView()Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object p0

    return-object p0
.end method

.method public isDividerVisible()Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Z

    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-static {v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->access$500(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;[Z)V

    invoke-interface {v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SplitScreenCtrl"

    const-string v1, "Failed to get divider visible"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    aget-boolean p0, v0, p0

    return p0
.end method

.method public isHomeStackResizable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->access$400(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)Z

    move-result p0

    return p0
.end method

.method public isMinimized()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->access$300(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)Z

    move-result p0

    return p0
.end method

.method public onAppTransitionFinished()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->access$500(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->access$500(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;Z)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUndockingTask()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->access$500(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerBoundsChangeListener(Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->access$500(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;Ljava/util/function/BiConsumer;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerInSplitScreenListener(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->access$500(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMinimized(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->access$500(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;Z)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public splitPrimaryTask()Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Z

    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-static {v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->access$500(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;[Z)V

    invoke-interface {v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SplitScreenCtrl"

    const-string v1, "Failed to split primary task"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    aget-boolean p0, v0, p0

    return p0
.end method
