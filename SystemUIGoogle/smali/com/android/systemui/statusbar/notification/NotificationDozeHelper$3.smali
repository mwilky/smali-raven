.class public final Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationDozeHelper.java"


# instance fields
.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$3;->val$view:Landroid/view/View;

    const p1, 0x7f0b022b

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$3;->val$view:Landroid/view/View;

    const v0, 0x7f0b022b

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
