.class public final Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideShellMainExecutorSfVsyncAnimationHandlerFactory;
.super Ljava/lang/Object;
.source "WMShellConcurrencyModule_ProvideShellMainExecutorSfVsyncAnimationHandlerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/animation/AnimationHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final mainExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideShellMainExecutorSfVsyncAnimationHandlerFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideShellMainExecutorSfVsyncAnimationHandlerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;)",
            "Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideShellMainExecutorSfVsyncAnimationHandlerFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideShellMainExecutorSfVsyncAnimationHandlerFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideShellMainExecutorSfVsyncAnimationHandlerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideShellMainExecutorSfVsyncAnimationHandler(Lcom/android/wm/shell/common/ShellExecutor;)Landroid/animation/AnimationHandler;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShellConcurrencyModule;->provideShellMainExecutorSfVsyncAnimationHandler(Lcom/android/wm/shell/common/ShellExecutor;)Landroid/animation/AnimationHandler;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/AnimationHandler;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/animation/AnimationHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideShellMainExecutorSfVsyncAnimationHandlerFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideShellMainExecutorSfVsyncAnimationHandlerFactory;->provideShellMainExecutorSfVsyncAnimationHandler(Lcom/android/wm/shell/common/ShellExecutor;)Landroid/animation/AnimationHandler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideShellMainExecutorSfVsyncAnimationHandlerFactory;->get()Landroid/animation/AnimationHandler;

    move-result-object p0

    return-object p0
.end method
