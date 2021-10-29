.class Lcom/android/keyguard/LockIconViewController$5;
.super Ljava/lang/Object;
.source "LockIconViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


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

    iput-object p1, p0, Lcom/android/keyguard/LockIconViewController$5;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p1, p0, Lcom/android/keyguard/LockIconViewController$5;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p1}, Lcom/android/keyguard/LockIconViewController;->access$2300(Lcom/android/keyguard/LockIconViewController;)V

    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$5;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p0}, Lcom/android/keyguard/LockIconViewController;->access$2200(Lcom/android/keyguard/LockIconViewController;)V

    return-void
.end method

.method public onOverlayChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$5;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p0}, Lcom/android/keyguard/LockIconViewController;->access$2200(Lcom/android/keyguard/LockIconViewController;)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$5;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p0}, Lcom/android/keyguard/LockIconViewController;->access$2200(Lcom/android/keyguard/LockIconViewController;)V

    return-void
.end method

.method public onUiModeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$5;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p0}, Lcom/android/keyguard/LockIconViewController;->access$2200(Lcom/android/keyguard/LockIconViewController;)V

    return-void
.end method
