.class Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$5;
.super Ljava/lang/Object;
.source "UdfpsKeyguardViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$5;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLaunchTransitionFadingAwayChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$5;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-static {v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->access$2100(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isLaunchTransitionFadingAway()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->access$2002(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$5;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    return-void
.end method
