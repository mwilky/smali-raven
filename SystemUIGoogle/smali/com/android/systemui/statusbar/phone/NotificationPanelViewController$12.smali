.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationPanelViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->applyQSClippingBounds(IIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3102(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3202(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    return-void
.end method
