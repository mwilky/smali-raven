.class public final Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;
.super Ljava/lang/Object;
.source "OpaLockscreen.java"

# interfaces
.implements Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;


# instance fields
.field public final mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mLockscreenOpaLayout:Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->refreshLockscreenOpaLayout()V

    return-void
.end method


# virtual methods
.method public final onProgress(IF)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->refreshLockscreenOpaLayout()V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->mLockscreenOpaLayout:Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;->onProgress(IF)V

    :cond_0
    return-void
.end method

.method public final onRelease()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->refreshLockscreenOpaLayout()V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->mLockscreenOpaLayout:Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;->onRelease()V

    :cond_0
    return-void
.end method

.method public final onResolve(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->refreshLockscreenOpaLayout()V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->mLockscreenOpaLayout:Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;->onResolve(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    :cond_0
    return-void
.end method

.method public final refreshLockscreenOpaLayout()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

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
    const v1, 0x7f0b03b5

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
