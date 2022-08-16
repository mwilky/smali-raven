.class public final Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;
.super Ljava/lang/Object;
.source "BouncerSwipeTouchHandler.java"

# interfaces
.implements Lcom/android/systemui/dreams/touch/DreamTouchHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;,
        Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$VelocityTrackerFactory;,
        Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$ValueAnimatorCreator;
    }
.end annotation


# instance fields
.field public mBouncerInitiallyShowing:Z

.field public final mBouncerZoneScreenPercentage:F

.field public mCapture:Ljava/lang/Boolean;

.field public final mCentralSurfaces:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/phone/CentralSurfaces;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentExpansion:F

.field public final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public final mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field public final mFlingAnimationUtilsClosing:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public final mOnGestureListener:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$1;

.field public mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public mTouchSession:Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public mValueAnimatorCreator:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$ValueAnimatorCreator;

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public mVelocityTrackerFactory:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$VelocityTrackerFactory;


# direct methods
.method public constructor <init>(Landroid/util/DisplayMetrics;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Ljava/util/Optional;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/dreams/touch/dagger/BouncerSwipeModule$$ExternalSyntheticLambda1;Lcom/android/systemui/dreams/touch/dagger/BouncerSwipeModule$$ExternalSyntheticLambda0;Lcom/android/wm/shell/animation/FlingAnimationUtils;Lcom/android/wm/shell/animation/FlingAnimationUtils;FLcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$1;-><init>(Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;)V

    iput-object v0, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mOnGestureListener:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$1;

    iput-object p1, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iput-object p3, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mCentralSurfaces:Ljava/util/Optional;

    iput-object p2, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iput-object p4, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iput p9, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mBouncerZoneScreenPercentage:F

    iput-object p7, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    iput-object p8, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mFlingAnimationUtilsClosing:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    iput-object p5, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mValueAnimatorCreator:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$ValueAnimatorCreator;

    iput-object p6, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mVelocityTrackerFactory:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$VelocityTrackerFactory;

    iput-object p10, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method


# virtual methods
.method public final getTouchInitiationRegion(Landroid/graphics/Region;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mCentralSurfaces:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget p0, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mBouncerZoneScreenPercentage:F

    mul-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-direct {v0, v1, v1, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object p0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mBouncerZoneScreenPercentage:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object p0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :goto_0
    return-void
.end method

.method public final onSessionStart(Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mVelocityTrackerFactory:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$VelocityTrackerFactory;

    invoke-interface {v0}, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$VelocityTrackerFactory;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    iput-object p1, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mTouchSession:Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iget-object v0, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setForcePluginOpen(Ljava/lang/Object;Z)V

    new-instance v0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;->registerCallback(Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda0;)V

    iget-object v0, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mOnGestureListener:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$1;

    invoke-interface {p1, v0}, Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;->registerGestureListener(Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$1;)Z

    new-instance v0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;->registerInputListener(Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)Z

    return-void
.end method
