.class public final Lcom/android/systemui/unfold/UnfoldTransitionModule;
.super Ljava/lang/Object;
.source "UnfoldTransitionModule.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideNaturalRotationProgressProvider(Landroid/content/Context;Landroid/view/IWindowManager;Ljava/util/Optional;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/IWindowManager;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
            ">;)",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;",
            ">;"
        }
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "windowManager"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "unfoldTransitionProgressProvider"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideNaturalRotationProgressProvider$1;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideNaturalRotationProgressProvider$1;-><init>(Landroid/content/Context;Landroid/view/IWindowManager;)V

    invoke-virtual {p3, p0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final provideShellProgressProvider(Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Ljava/util/Optional;)Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
            ">;)",
            "Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;"
        }
    .end annotation

    const-string p0, "config"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "provider"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/systemui/unfold/UnfoldProgressProvider;

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "provider.get()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    invoke-direct {p0, p1}, Lcom/android/systemui/unfold/UnfoldProgressProvider;-><init>(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;->NO_PROVIDER:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

    const-string p1, "{\n            ShellUnfoldProgressProvider.NO_PROVIDER\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public final provideStatusBarScopedTransitionProvider(Ljava/util/Optional;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;",
            ">;)",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;",
            ">;"
        }
    .end annotation

    const-string p0, "source"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideStatusBarScopedTransitionProvider$1;->INSTANCE:Lcom/android/systemui/unfold/UnfoldTransitionModule$provideStatusBarScopedTransitionProvider$1;

    invoke-virtual {p1, p0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final provideUnfoldTransitionConfig(Landroid/content/Context;)Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/systemui/unfold/UnfoldTransitionFactory;->createConfig(Landroid/content/Context;)Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;

    move-result-object p0

    return-object p0
.end method

.method public final provideUnfoldTransitionProgressProvider(Landroid/content/Context;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Ldagger/Lazy;Landroid/hardware/devicestate/DeviceStateManager;Landroid/hardware/SensorManager;Ljava/util/concurrent/Executor;Landroid/os/Handler;)Ljava/util/Optional;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/LifecycleScreenStatusProvider;",
            ">;",
            "Landroid/hardware/devicestate/DeviceStateManager;",
            "Landroid/hardware/SensorManager;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/Handler;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
            ">;"
        }
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "config"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "screenStatusProvider"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "deviceStateManager"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "sensorManager"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "executor"

    invoke-static {p6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "handler"

    invoke-static {p7, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    const-string p3, "screenStatusProvider.get()"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;

    move-object v0, p1

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/unfold/UnfoldTransitionFactory;->createUnfoldTransitionProgressProvider(Landroid/content/Context;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;Landroid/hardware/devicestate/DeviceStateManager;Landroid/hardware/SensorManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;)Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    const-string p1, "{\n            Optional.of(\n                createUnfoldTransitionProgressProvider(\n                    context,\n                    config,\n                    screenStatusProvider.get(),\n                    deviceStateManager,\n                    sensorManager,\n                    handler,\n                    executor\n                )\n            )\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    const-string p1, "{\n            Optional.empty()\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method
