.class public final Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationPanelViewController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$8;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$8;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClippingAnimation:Landroid/animation/ValueAnimator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsQsTranslationResetAnimator:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsPulseExpansionResetAnimator:Z

    return-void
.end method