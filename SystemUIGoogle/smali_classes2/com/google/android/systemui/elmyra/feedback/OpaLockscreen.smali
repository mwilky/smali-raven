.class public Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;
.super Ljava/lang/Object;
.source "OpaLockscreen.java"

# interfaces
.implements Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;


# static fields
.field private static final LOCK_ICON_HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final LOCK_ICON_SHOW_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private mLockscreenOpaLayout:Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->LOCK_ICON_HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->LOCK_ICON_SHOW_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->refreshLockscreenOpaLayout()V

    return-void
.end method

.method private refreshLockscreenOpaLayout()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->mLockscreenOpaLayout:Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    iput-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->mLockscreenOpaLayout:Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;->onRelease()V

    :cond_2
    sget v1, Lcom/android/systemui/R$id;->lockscreen_opa:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->mLockscreenOpaLayout:Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    :cond_3
    return-void

    :cond_4
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->mLockscreenOpaLayout:Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    return-void
.end method


# virtual methods
.method public onProgress(FI)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->refreshLockscreenOpaLayout()V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->mLockscreenOpaLayout:Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;->onProgress(FI)V

    :cond_0
    return-void
.end method

.method public onRelease()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->refreshLockscreenOpaLayout()V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->mLockscreenOpaLayout:Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;->onRelease()V

    :cond_0
    return-void
.end method

.method public onResolve(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->refreshLockscreenOpaLayout()V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->mLockscreenOpaLayout:Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;->onResolve(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    :cond_0
    return-void
.end method
