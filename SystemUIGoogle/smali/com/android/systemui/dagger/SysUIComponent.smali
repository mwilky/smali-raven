.class public interface abstract Lcom/android/systemui/dagger/SysUIComponent;
.super Ljava/lang/Object;
.source "SysUIComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/dagger/SysUIComponent$Builder;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$7fysl9LIOFjab_eqkovVpB7LI_0(Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/dagger/SysUIComponent;->lambda$init$1(Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B_0g7GNwCBKx72HamzYsVOe4rRg(Lcom/android/systemui/unfold/SysUIUnfoldComponent;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/dagger/SysUIComponent;->lambda$init$0(Lcom/android/systemui/unfold/SysUIUnfoldComponent;)V

    return-void
.end method

.method private static synthetic lambda$init$0(Lcom/android/systemui/unfold/SysUIUnfoldComponent;)V
    .locals 1

    invoke-interface {p0}, Lcom/android/systemui/unfold/SysUIUnfoldComponent;->getUnfoldLightRevealOverlayAnimation()Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->init()V

    invoke-interface {p0}, Lcom/android/systemui/unfold/SysUIUnfoldComponent;->getUnfoldTransitionWallpaperController()Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;->init()V

    return-void
.end method

.method private static synthetic lambda$init$1(Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->init()V

    return-void
.end method


# virtual methods
.method public abstract createDependency()Lcom/android/systemui/Dependency;
.end method

.method public abstract createDumpManager()Lcom/android/systemui/dump/DumpManager;
.end method

.method public abstract getConfigurationController()Lcom/android/systemui/statusbar/policy/ConfigurationController;
.end method

.method public abstract getContextComponentHelper()Lcom/android/systemui/dagger/ContextComponentHelper;
.end method

.method public abstract getInitController()Lcom/android/systemui/InitController;
.end method

.method public abstract getNaturalRotationUnfoldProgressProvider()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSysUIUnfoldComponent()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/SysUIUnfoldComponent;",
            ">;"
        }
    .end annotation
.end method

.method public init()V
    .locals 2

    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getSysUIUnfoldComponent()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getNaturalRotationUnfoldProgressProvider()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda1;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public abstract inject(Lcom/android/systemui/SystemUIAppComponentFactory;)V
.end method

.method public abstract provideBootCacheImpl()Lcom/android/systemui/BootCompleteCacheImpl;
.end method
