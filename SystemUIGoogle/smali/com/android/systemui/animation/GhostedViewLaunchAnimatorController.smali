.class public Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;
.super Ljava/lang/Object;
.source "GhostedViewLaunchAnimatorController.kt"

# interfaces
.implements Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;,
        Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGhostedViewLaunchAnimatorController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GhostedViewLaunchAnimatorController.kt\ncom/android/systemui/animation/GhostedViewLaunchAnimatorController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,428:1\n1#2:429\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;


# instance fields
.field private backgroundDrawable:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

.field private final backgroundInsets$delegate:Lkotlin/Lazy;

.field private backgroundView:Landroid/widget/FrameLayout;

.field private final cujType:Ljava/lang/Integer;

.field private ghostView:Landroid/view/GhostView;

.field private final ghostViewMatrix:Landroid/graphics/Matrix;

.field private final ghostedView:Landroid/view/View;

.field private final ghostedViewLocation:[I

.field private final ghostedViewState:Lcom/android/systemui/animation/LaunchAnimator$State;

.field private final initialGhostViewMatrixValues:[F

.field private launchContainer:Landroid/view/ViewGroup;

.field private final launchContainerLocation:[I

.field private startBackgroundAlpha:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->Companion:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 9

    const-string v0, "ghostedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->cujType:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainer:Landroid/view/ViewGroup;

    const/4 p1, 0x2

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainerLocation:[I

    const/4 p2, 0x0

    const/16 v0, 0x9

    new-array v1, v0, [F

    :goto_0
    if-ge p2, v0, :cond_0

    const/4 v2, 0x0

    aput v2, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->initialGhostViewMatrixValues:[F

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostViewMatrix:Landroid/graphics/Matrix;

    new-instance p2, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$backgroundInsets$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$backgroundInsets$2;-><init>(Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundInsets$delegate:Lkotlin/Lazy;

    const/16 p2, 0xff

    iput p2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->startBackgroundAlpha:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewLocation:[I

    new-instance p1, Lcom/android/systemui/animation/LaunchAnimator$State;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/animation/LaunchAnimator$State;-><init>(IIIIFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewState:Lcom/android/systemui/animation/LaunchAnimator$State;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;)V

    return-void
.end method

.method private final getBackgroundInsets()Landroid/graphics/Insets;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundInsets$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Insets;

    return-object p0
.end method

.method private final getLaunchContainerOverlay()Landroid/view/ViewGroupOverlay;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    const-string v0, "launchContainer.overlay"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public createAnimatorState()Lcom/android/systemui/animation/LaunchAnimator$State;
    .locals 10

    new-instance v9, Lcom/android/systemui/animation/LaunchAnimator$State;

    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getCurrentTopCornerRadius()F

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getCurrentBottomCornerRadius()F

    move-result v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/animation/LaunchAnimator$State;-><init>(IIIIFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v9}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->fillGhostedViewState(Lcom/android/systemui/animation/LaunchAnimator$State;)V

    return-object v9
.end method

.method public final fillGhostedViewState(Lcom/android/systemui/animation/LaunchAnimator$State;)V
    .locals 4

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-direct {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getBackgroundInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget v3, v0, Landroid/graphics/Insets;->top:I

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lcom/android/systemui/animation/LaunchAnimator$State;->setTop(I)V

    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewLocation:[I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/android/systemui/animation/LaunchAnimator$State;->setBottom(I)V

    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v3, v0, Landroid/graphics/Insets;->left:I

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lcom/android/systemui/animation/LaunchAnimator$State;->setLeft(I)V

    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewLocation:[I

    aget v1, v1, v2

    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr v1, p0

    iget p0, v0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v1, p0

    invoke-virtual {p1, v1}, Lcom/android/systemui/animation/LaunchAnimator$State;->setRight(I)V

    return-void
.end method

.method protected getBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected getCurrentBottomCornerRadius()F
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->Companion:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;

    invoke-virtual {v1, p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;->findGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result p0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_1
    return p0
.end method

.method protected getCurrentTopCornerRadius()F
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->Companion:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;

    invoke-virtual {v1, p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;->findGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result p0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_1
    return p0
.end method

.method public getLaunchContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public onIntentStarted(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$DefaultImpls;->onIntentStarted(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Z)V

    return-void
.end method

.method public onLaunchAnimationCancelled()V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$DefaultImpls;->onLaunchAnimationCancelled(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    return-void
.end method

.method public onLaunchAnimationEnd(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostView:Landroid/view/GhostView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->cujType:Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundDrawable:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->getWrapped()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->startBackgroundAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_2
    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-static {p1}, Landroid/view/GhostView;->removeGhost(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getLaunchContainerOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onLaunchAnimationProgress(Lcom/android/systemui/animation/LaunchAnimator$State;FF)V
    .locals 11

    const-string p2, "state"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostView:Landroid/view/GhostView;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getVisible()Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/GhostView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2, v1}, Landroid/view/GhostView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/view/GhostView;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    invoke-virtual {p2, v2}, Landroid/view/GhostView;->setVisibility(I)V

    invoke-virtual {p3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewState:Lcom/android/systemui/animation/LaunchAnimator$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->fillGhostedViewState(Lcom/android/systemui/animation/LaunchAnimator$State;)V

    invoke-virtual {p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewState:Lcom/android/systemui/animation/LaunchAnimator$State;

    invoke-virtual {v1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getRight()I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewState:Lcom/android/systemui/animation/LaunchAnimator$State;

    invoke-virtual {v3}, Lcom/android/systemui/animation/LaunchAnimator$State;->getRight()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewState:Lcom/android/systemui/animation/LaunchAnimator$State;

    invoke-virtual {v4}, Lcom/android/systemui/animation/LaunchAnimator$State;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getBottom()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewState:Lcom/android/systemui/animation/LaunchAnimator$State;

    invoke-virtual {v5}, Lcom/android/systemui/animation/LaunchAnimator$State;->getBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewState:Lcom/android/systemui/animation/LaunchAnimator$State;

    invoke-virtual {v6}, Lcom/android/systemui/animation/LaunchAnimator$State;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewState:Lcom/android/systemui/animation/LaunchAnimator$State;

    invoke-virtual {v7}, Lcom/android/systemui/animation/LaunchAnimator$State;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostViewMatrix:Landroid/graphics/Matrix;

    invoke-static {v6, v7, v8}, Landroid/view/GhostView;->calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainerLocation:[I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    iget-object v6, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostViewMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewState:Lcom/android/systemui/animation/LaunchAnimator$State;

    invoke-virtual {v7}, Lcom/android/systemui/animation/LaunchAnimator$State;->getCenterX()F

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainerLocation:[I

    aget v8, v8, v2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewState:Lcom/android/systemui/animation/LaunchAnimator$State;

    invoke-virtual {v8}, Lcom/android/systemui/animation/LaunchAnimator$State;->getCenterY()F

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainerLocation:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {v6, v5, v5, v7, v8}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v5, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostViewMatrix:Landroid/graphics/Matrix;

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-virtual {v5, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostViewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/view/GhostView;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    invoke-direct {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getBackgroundInsets()Landroid/graphics/Insets;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getTop()I

    move-result v0

    iget v1, p2, Landroid/graphics/Insets;->top:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getLeft()I

    move-result v1

    iget v3, p2, Landroid/graphics/Insets;->left:I

    sub-int/2addr v1, v3

    invoke-virtual {p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getRight()I

    move-result v3

    iget v4, p2, Landroid/graphics/Insets;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getBottom()I

    move-result v4

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v4, p2

    iget-object p2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainerLocation:[I

    aget p2, p2, v10

    sub-int/2addr v0, p2

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setTop(I)V

    iget-object p2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainerLocation:[I

    aget p2, p2, v10

    sub-int/2addr v4, p2

    invoke-virtual {p3, v4}, Landroid/widget/FrameLayout;->setBottom(I)V

    iget-object p2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainerLocation:[I

    aget p2, p2, v2

    sub-int/2addr v1, p2

    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setLeft(I)V

    iget-object p2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainerLocation:[I

    aget p2, p2, v2

    sub-int/2addr v3, p2

    invoke-virtual {p3, v3}, Landroid/widget/FrameLayout;->setRight(I)V

    iget-object p2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundDrawable:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->getWrapped()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getTopCornerRadius()F

    move-result p3

    invoke-virtual {p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getBottomCornerRadius()F

    move-result p1

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->setBackgroundCornerRadius(Landroid/graphics/drawable/Drawable;FF)V

    :goto_0
    return-void
.end method

.method public onLaunchAnimationStart(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    const-string p0, "GhostedViewLaunchAnimatorController"

    const-string p1, "Skipping animation as ghostedView is not attached to a ViewGroup"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getLaunchContainerOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    const/16 v0, 0xff

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->startBackgroundAlpha:I

    new-instance v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

    invoke-direct {v0, p1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundDrawable:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/GhostView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostView:Landroid/view/GhostView;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/GhostView;->getAnimationMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    :goto_2
    if-nez p1, :cond_4

    sget-object p1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->initialGhostViewMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->cujType:Ljava/lang/Integer;

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    :goto_3
    return-void
.end method

.method protected setBackgroundCornerRadius(Landroid/graphics/drawable/Drawable;FF)V
    .locals 1

    const-string v0, "background"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundDrawable:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->setBackgroundRadius(FF)V

    :goto_0
    return-void
.end method

.method public setLaunchContainer(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainer:Landroid/view/ViewGroup;

    return-void
.end method
