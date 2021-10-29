.class public final Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;
.super Ljava/lang/Object;
.source "SmartspaceTransitionController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController$Companion;


# instance fields
.field private final ISmartspaceTransitionController:Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController$ISmartspaceTransitionController$1;

.field private launcherSmartspace:Lcom/android/systemui/shared/system/smartspace/ISmartspaceCallback;

.field private lockscreenSmartspace:Landroid/view/View;

.field private mLauncherSmartspaceState:Lcom/android/systemui/shared/system/smartspace/SmartspaceState;

.field private final smartspaceDestinationBounds:Landroid/graphics/Rect;

.field private final smartspaceOriginBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->Companion:Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController$ISmartspaceTransitionController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController$ISmartspaceTransitionController$1;-><init>(Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;)V

    iput-object v0, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->ISmartspaceTransitionController:Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController$ISmartspaceTransitionController$1;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->smartspaceOriginBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->smartspaceDestinationBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final createExternalInterface()Lcom/android/systemui/shared/system/smartspace/ISmartspaceTransitionController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->ISmartspaceTransitionController:Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController$ISmartspaceTransitionController$1;

    return-object p0
.end method

.method public final getLauncherSmartspace()Lcom/android/systemui/shared/system/smartspace/ISmartspaceCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->launcherSmartspace:Lcom/android/systemui/shared/system/smartspace/ISmartspaceCallback;

    return-object p0
.end method

.method public final getLockscreenSmartspace()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->lockscreenSmartspace:Landroid/view/View;

    return-object p0
.end method

.method public final isSmartspaceTransitionPossible()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->mLauncherSmartspaceState:Lcom/android/systemui/shared/system/smartspace/SmartspaceState;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceState;->getBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object p0

    :goto_0
    const/4 v0, 0x1

    if-nez p0, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    :goto_1
    sget-object v1, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->Companion:Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController$Companion;

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController$Companion;->isLauncherUnderneath()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public final prepareForUnlockTransition()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->updateLauncherSmartSpaceState()Lcom/android/systemui/shared/system/smartspace/SmartspaceState;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceState;->getBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->getLockscreenSmartspace()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->getLockscreenSmartspace()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->smartspaceOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->smartspaceDestinationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceState;->getBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->getLockscreenSmartspace()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->getLockscreenSmartspace()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    neg-int p0, p0

    invoke-virtual {v1, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    :cond_1
    return-void
.end method

.method public final setLauncherSmartspace(Lcom/android/systemui/shared/system/smartspace/ISmartspaceCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->launcherSmartspace:Lcom/android/systemui/shared/system/smartspace/ISmartspaceCallback;

    return-void
.end method

.method public final setLockscreenSmartspace(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->lockscreenSmartspace:Landroid/view/View;

    return-void
.end method

.method public final setMLauncherSmartspaceState(Lcom/android/systemui/shared/system/smartspace/SmartspaceState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->mLauncherSmartspaceState:Lcom/android/systemui/shared/system/smartspace/SmartspaceState;

    return-void
.end method

.method public final setProgressToDestinationBounds(F)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->isSmartspaceTransitionPossible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->smartspaceDestinationBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->smartspaceOriginBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->getLockscreenSmartspace()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->smartspaceOriginBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v3, v1

    iget v1, v2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    sub-float/2addr v1, p1

    iget-object p0, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->lockscreenSmartspace:Landroid/view/View;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p1

    add-float/2addr p1, v3

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p1

    add-float/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public final updateLauncherSmartSpaceState()Lcom/android/systemui/shared/system/smartspace/SmartspaceState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->launcherSmartspace:Lcom/android/systemui/shared/system/smartspace/ISmartspaceCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/shared/system/smartspace/ISmartspaceCallback;->getSmartspaceState()Lcom/android/systemui/shared/system/smartspace/SmartspaceState;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->setMLauncherSmartspaceState(Lcom/android/systemui/shared/system/smartspace/SmartspaceState;)V

    return-object v0
.end method
