.class Lcom/android/keyguard/LockIconViewController$4;
.super Ljava/lang/Object;
.source "LockIconViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/LockIconViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/LockIconViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/LockIconViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/LockIconViewController$4;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardFadingAwayChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController$4;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {v0}, Lcom/android/keyguard/LockIconViewController;->access$2000(Lcom/android/keyguard/LockIconViewController;)V

    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$4;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p0}, Lcom/android/keyguard/LockIconViewController;->access$900(Lcom/android/keyguard/LockIconViewController;)V

    return-void
.end method

.method public onKeyguardShowingChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController$4;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {v0}, Lcom/android/keyguard/LockIconViewController;->access$1900(Lcom/android/keyguard/LockIconViewController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/LockIconViewController;->access$1802(Lcom/android/keyguard/LockIconViewController;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController$4;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {v0}, Lcom/android/keyguard/LockIconViewController;->access$2000(Lcom/android/keyguard/LockIconViewController;)V

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController$4;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {v0}, Lcom/android/keyguard/LockIconViewController;->access$2100(Lcom/android/keyguard/LockIconViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController$4;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {v0}, Lcom/android/keyguard/LockIconViewController;->access$1400(Lcom/android/keyguard/LockIconViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/LockIconViewController;->access$1302(Lcom/android/keyguard/LockIconViewController;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController$4;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {v0}, Lcom/android/keyguard/LockIconViewController;->access$800(Lcom/android/keyguard/LockIconViewController;)V

    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$4;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p0}, Lcom/android/keyguard/LockIconViewController;->access$900(Lcom/android/keyguard/LockIconViewController;)V

    return-void
.end method

.method public onUnlockedChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController$4;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {v0}, Lcom/android/keyguard/LockIconViewController;->access$1900(Lcom/android/keyguard/LockIconViewController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/LockIconViewController;->access$1802(Lcom/android/keyguard/LockIconViewController;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController$4;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {v0}, Lcom/android/keyguard/LockIconViewController;->access$2000(Lcom/android/keyguard/LockIconViewController;)V

    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$4;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p0}, Lcom/android/keyguard/LockIconViewController;->access$900(Lcom/android/keyguard/LockIconViewController;)V

    return-void
.end method
