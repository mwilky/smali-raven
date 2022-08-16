.class public final Lcom/android/keyguard/AnimatableClockController$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "AnimatableClockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/AnimatableClockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/AnimatableClockController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/AnimatableClockController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/AnimatableClockController$4;->this$0:Lcom/android/keyguard/AnimatableClockController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardVisibilityChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/AnimatableClockController$4;->this$0:Lcom/android/keyguard/AnimatableClockController;

    iput-boolean p1, p0, Lcom/android/keyguard/AnimatableClockController;->mKeyguardShowing:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/AnimatableClockView;

    iget-boolean p0, p0, Lcom/android/keyguard/AnimatableClockController;->mIsDozing:Z

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/keyguard/AnimatableClockView;->animateDoze(ZZ)V

    :cond_0
    return-void
.end method
