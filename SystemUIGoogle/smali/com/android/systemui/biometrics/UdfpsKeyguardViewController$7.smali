.class public final Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$7;
.super Ljava/lang/Object;
.source "UdfpsKeyguardViewController.java"

# interfaces
.implements Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$7;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLaunchAnimationEnd()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$7;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mIsLaunchingActivity:Z

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->updateAlpha()V

    return-void
.end method

.method public final onLaunchAnimationProgress(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$7;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mActivityLaunchProgress:F

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->updateAlpha()V

    return-void
.end method

.method public final onLaunchAnimationStart()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$7;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mIsLaunchingActivity:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mActivityLaunchProgress:F

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->updateAlpha()V

    return-void
.end method
