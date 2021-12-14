.class public final Lcom/android/systemui/statusbar/events/PrivacyDotViewController;
.super Ljava/lang/Object;
.source "PrivacyDotViewController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyDotViewController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyDotViewController.kt\ncom/android/systemui/statusbar/events/PrivacyDotViewController\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,659:1\n1256#2,2:660\n1256#2,2:662\n1256#2,2:664\n1256#2,2:666\n1256#2,2:668\n*E\n*S KotlinDebug\n*F\n+ 1 PrivacyDotViewController.kt\ncom/android/systemui/statusbar/events/PrivacyDotViewController\n*L\n214#1,2:660\n225#1,2:662\n240#1,2:664\n345#1,2:666\n496#1,2:668\n*E\n"
.end annotation


# instance fields
.field private final animationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

.field private bl:Landroid/view/View;

.field private br:Landroid/view/View;

.field private cancelRunnable:Ljava/lang/Runnable;

.field private final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

.field private currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

.field private final lock:Ljava/lang/Object;

.field private final mainExecutor:Ljava/util/concurrent/Executor;

.field private nextViewState:Lcom/android/systemui/statusbar/events/ViewState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "lock"
        }
    .end annotation
.end field

.field private sbHeightLandscape:I

.field private sbHeightPortrait:I

.field private final stateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final systemStatusAnimationCallback:Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

.field private tl:Landroid/view/View;

.field private tr:Landroid/view/View;

.field private uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const-string v6, "mainExecutor"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "stateController"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "configurationController"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "contentInsetsProvider"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "animationScheduler"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->mainExecutor:Ljava/util/concurrent/Executor;

    iput-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->stateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object v3, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object v4, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    iput-object v5, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->animationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    new-instance v1, Lcom/android/systemui/statusbar/events/ViewState;

    move-object/from16 v24, v1

    move-object v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x3fff

    const/16 v23, 0x0

    invoke-direct/range {v7 .. v23}, Lcom/android/systemui/statusbar/events/ViewState;-><init>(ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x3fff

    const/16 v40, 0x0

    invoke-static/range {v24 .. v40}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;Ljava/lang/String;ILjava/lang/Object;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$1;-><init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->addCallback(Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsChangedListener;)V

    new-instance v1, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$2;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$2;-><init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    invoke-interface {v3, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$3;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$3;-><init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    new-instance v1, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$systemStatusAnimationCallback$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$systemStatusAnimationCallback$1;-><init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->systemStatusAnimationCallback:Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    return-void
.end method

.method public static final synthetic access$getAnimationScheduler$p(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->animationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    return-object p0
.end method

.method public static final synthetic access$getLock$p(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getNextViewState$p(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)Lcom/android/systemui/statusbar/events/ViewState;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    return-object p0
.end method

.method public static final synthetic access$getSystemStatusAnimationCallback$p(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->systemStatusAnimationCallback:Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    return-object p0
.end method

.method public static final synthetic access$processNextViewState(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->processNextViewState()V

    return-void
.end method

.method public static final synthetic access$selectDesignatedCorner(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;IZ)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->selectDesignatedCorner(IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setNewLayoutRects(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNewLayoutRects()V

    return-void
.end method

.method public static final synthetic access$setNextViewState(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/statusbar/events/ViewState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V

    return-void
.end method

.method public static final synthetic access$updateStatusBarState(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->updateStatusBarState()V

    return-void
.end method

.method private final activeRotationForCorner(Landroid/view/View;Z)I
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    :cond_0
    move v2, v4

    goto :goto_2

    :cond_1
    :goto_0
    move v2, v5

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    move v2, v3

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz p0, :cond_7

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz p2, :cond_0

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    return v2

    :cond_7
    const-string p0, "br"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_8
    const-string/jumbo p0, "tl"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_9
    const-string/jumbo p0, "tr"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final cornerForView(Landroid/view/View;)I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz p0, :cond_4

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    :goto_0
    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "not a corner view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const-string p0, "br"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string p0, "bl"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string/jumbo p0, "tr"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string/jumbo p0, "tl"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final cornerIndex(Landroid/view/View;)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->cornerForView(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private final getLayoutRects()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentInsetsForRotation(I)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentInsetsForRotation(I)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentInsetsForRotation(I)Landroid/graphics/Rect;

    move-result-object v4

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentInsetsForRotation(I)Landroid/graphics/Rect;

    move-result-object p0

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/graphics/Rect;

    aput-object v0, v7, v3

    aput-object v2, v7, v5

    aput-object v4, v7, v6

    aput-object p0, v7, v1

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getViews()Lkotlin/sequences/Sequence;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Landroid/view/View;

    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    aput-object v0, v2, v1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz v1, :cond_3

    aput-object v1, v2, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz v1, :cond_2

    aput-object v1, v2, v0

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz p0, :cond_1

    aput-object p0, v2, v0

    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const-string p0, "bl"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_2
    const-string p0, "br"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_3
    const-string/jumbo p0, "tr"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_4
    const-string/jumbo p0, "tl"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method private final hideDotView(Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xa0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p2, Lcom/android/systemui/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p2, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$hideDotView$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$hideDotView$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final isShadeInQs()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "lock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->stateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->stateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->stateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final processNextViewState()V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "processNextViewState: "

    invoke-static {v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->access$dlog(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3fff

    const/16 v18, 0x0

    invoke-static/range {v2 .. v18}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;Ljava/lang/String;ILjava/lang/Object;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v2

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->resolveState(Lcom/android/systemui/statusbar/events/ViewState;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final resolveState(Lcom/android/systemui/statusbar/events/ViewState;)V
    .locals 3

    const-string v0, "resolveState "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->access$dlog(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getViewInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "resolveState: view is not initialized. skipping."

    invoke-static {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->access$dlog(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "resolveState: skipping"

    invoke-static {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->access$dlog(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getRotation()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/events/ViewState;->getRotation()I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getRotation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->updateRotations(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/events/ViewState;->needsLayout(Lcom/android/systemui/statusbar/events/ViewState;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setCornerSizes(Lcom/android/systemui/statusbar/events/ViewState;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->getViews()Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getDesignatedCorner()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/events/ViewState;->getDesignatedCorner()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/events/ViewState;->getDesignatedCorner()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getDesignatedCorner()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getDesignatedCorner()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->shouldShowDot()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->updateDesignatedCorner(Landroid/view/View;Z)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/events/ViewState;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getDesignatedCorner()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->shouldShowDot()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/events/ViewState;->shouldShowDot()Z

    move-result v1

    if-eq v0, v1, :cond_a

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getDesignatedCorner()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getDesignatedCorner()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->showDotView(Landroid/view/View;Z)V

    goto :goto_4

    :cond_9
    if-nez v0, :cond_a

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getDesignatedCorner()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getDesignatedCorner()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->hideDotView(Landroid/view/View;Z)V

    :cond_a
    :goto_4
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    return-void
.end method

.method private final rotatedCorner(II)I
    .locals 0

    sub-int/2addr p1, p2

    if-gez p1, :cond_0

    add-int/lit8 p1, p1, 0x4

    :cond_0
    return p1
.end method

.method private final scheduleUpdate()V
    .locals 4

    const-string v0, "scheduleUpdate: "

    invoke-static {v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->access$dlog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->cancelRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$scheduleUpdate$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$scheduleUpdate$1;-><init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    const-wide/16 v2, 0x64

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->cancelRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private final selectDesignatedCorner(IZ)Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v2, "tl"

    const-string/jumbo v3, "tr"

    if-eqz p1, :cond_d

    const/4 v4, 0x1

    const-string v5, "br"

    if-eq p1, v4, :cond_9

    const/4 v3, 0x2

    const-string v4, "bl"

    if-eq p1, v3, :cond_5

    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "unknown rotation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_9
    if-eqz p2, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz v0, :cond_a

    goto :goto_0

    :cond_a
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz v0, :cond_c

    goto :goto_0

    :cond_c
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_d
    if-eqz p2, :cond_f

    if-eqz v0, :cond_e

    goto :goto_0

    :cond_e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz v0, :cond_10

    :goto_0
    return-object v0

    :cond_10
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final setCornerSizes(Lcom/android/systemui/statusbar/events/ViewState;)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getLayoutRtl()Z

    move-result v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    const-string/jumbo v3, "tl"

    const/4 v4, 0x0

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_1
    :goto_0
    iget v2, v1, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Point;->x:I

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    if-eqz v5, :cond_d

    invoke-direct {p0, v5, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->activeRotationForCorner(Landroid/view/View;Z)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/events/ViewState;->contentRectForRotation(I)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v6, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz v0, :cond_2

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_2

    :cond_2
    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v5, v1, v5

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    const-string/jumbo v5, "tr"

    if-eqz v3, :cond_b

    invoke-direct {p0, v3, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->activeRotationForCorner(Landroid/view/View;Z)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/events/ViewState;->contentRectForRotation(I)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v7, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz v0, :cond_3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_3

    :cond_3
    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v3, v2, v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    const-string v5, "br"

    if-eqz v3, :cond_9

    invoke-direct {p0, v3, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->activeRotationForCorner(Landroid/view/View;Z)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/events/ViewState;->contentRectForRotation(I)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v7, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz v0, :cond_4

    iget v1, v3, Landroid/graphics/Rect;->left:I

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_4

    :cond_4
    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    const-string v3, "bl"

    if-eqz v1, :cond_7

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->activeRotationForCorner(Landroid/view/View;Z)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/events/ViewState;->contentRectForRotation(I)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-static {p0, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz v0, :cond_5

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_5

    :cond_5
    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p1

    iput v2, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_5
    return-void

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_8
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_9
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_a
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_b
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_c
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_d
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_e
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method private final setCornerVisibilities(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->getViews()Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final setNewLayoutRects()V
    .locals 21

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->getLayoutRects()Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/graphics/Rect;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/graphics/Rect;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/graphics/Rect;

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3f0f

    const/16 v20, 0x0

    invoke-static/range {v4 .. v20}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;Ljava/lang/String;ILjava/lang/Object;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private final setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->scheduleUpdate()V

    return-void
.end method

.method private final showDotView(Landroid/view/View;Z)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/high16 p0, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0xa0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method private final updateDesignatedCorner(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0x12c

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final updateRotations(I)V
    .locals 6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->getViews()Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->cornerForView(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->rotatedCorner(II)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->access$toGravity(I)I

    move-result v5

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget v3, Lcom/android/systemui/R$id;->privacy_dot:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->access$innerGravity(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final updateStatusBarState()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->isShadeInQs()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3ffb

    const/16 v18, 0x0

    invoke-static/range {v2 .. v18}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;Ljava/lang/String;ILjava/lang/Object;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final initialize(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string/jumbo v5, "topLeft"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "topRight"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "bottomLeft"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "bottomRight"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    if-eqz v5, :cond_4

    iget-object v6, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz v5, :cond_2

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz v5, :cond_1

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz v5, :cond_0

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    return-void

    :cond_0
    const-string v0, "br"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_1
    const-string v0, "bl"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_2
    const-string/jumbo v0, "tr"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_3
    const-string/jumbo v0, "tl"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_4
    iput-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    iput-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    iput-object v3, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    iput-object v4, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->isLayoutRtl()Z

    move-result v11

    const/4 v1, 0x0

    invoke-direct {v0, v1, v11}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->selectDesignatedCorner(IZ)Landroid/view/View;

    move-result-object v15

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->cornerIndex(Landroid/view/View;)I

    move-result v14

    iget-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$initialize$5;

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$initialize$5;-><init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentInsetsForRotation(I)Landroid/graphics/Rect;

    move-result-object v10

    iget-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentInsetsForRotation(I)Landroid/graphics/Rect;

    move-result-object v7

    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentInsetsForRotation(I)Landroid/graphics/Rect;

    move-result-object v8

    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentInsetsForRotation(I)Landroid/graphics/Rect;

    move-result-object v9

    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x260e

    const/16 v18, 0x0

    invoke-static/range {v2 .. v18}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;Ljava/lang/String;ILjava/lang/Object;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final setNewRotation(I)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v11, p1

    const-string/jumbo v1, "updateRotation: "

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->access$dlog(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/events/ViewState;->getRotation()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-ne v11, v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/events/ViewState;->getLayoutRtl()Z

    move-result v2

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v1

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setCornerVisibilities(I)V

    invoke-direct {v0, v11, v2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->selectDesignatedCorner(IZ)Landroid/view/View;

    move-result-object v14

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->cornerIndex(Landroid/view/View;)I

    move-result v13

    if-eqz v11, :cond_2

    const/4 v1, 0x1

    if-eq v11, v1, :cond_1

    const/4 v1, 0x2

    if-eq v11, v1, :cond_2

    const/4 v1, 0x3

    if-eq v11, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->sbHeightLandscape:I

    goto :goto_0

    :cond_2
    iget v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->sbHeightPortrait:I

    :goto_0
    move v12, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v15, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object/from16 v18, v15

    move-object/from16 v15, v16

    const/16 v16, 0x21ff

    const/16 v17, 0x0

    move-object/from16 v19, v1

    move-object/from16 v1, v18

    move/from16 v11, p1

    :try_start_3
    invoke-static/range {v1 .. v17}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;Ljava/lang/String;ILjava/lang/Object;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v19

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v19, v1

    :goto_1
    monitor-exit v19

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final setQsExpanded(Z)V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "setQsExpanded "

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->access$dlog(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3ff7

    const/16 v18, 0x0

    move/from16 v6, p1

    invoke-static/range {v2 .. v18}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;Ljava/lang/String;ILjava/lang/Object;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final setStatusBarHeights(II)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->sbHeightPortrait:I

    iput p2, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->sbHeightLandscape:I

    return-void
.end method

.method public final setUiExecutor(Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-void
.end method
