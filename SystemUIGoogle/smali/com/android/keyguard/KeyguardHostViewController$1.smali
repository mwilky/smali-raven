.class public final Lcom/android/keyguard/KeyguardHostViewController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardHostViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardHostViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardHostViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTrustGrantedWithFlags(II)V
    .locals 5

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isVisibleToUser()Z

    move-result v0

    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    if-nez v4, :cond_4

    if-eqz v3, :cond_9

    :cond_4
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardHostViewController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p1}, Lcom/android/keyguard/ViewMediatorCallback;->isScreenOn()Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    if-nez v0, :cond_7

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->playTrustedSound()V

    goto :goto_4

    :cond_7
    :goto_3
    if-nez v0, :cond_8

    const-string p1, "KeyguardViewBase"

    const-string v0, "TrustAgent dismissed Keyguard."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mSecurityCallback:Lcom/android/keyguard/KeyguardHostViewController$2;

    invoke-virtual {p0, p2, v2, v2}, Lcom/android/keyguard/KeyguardHostViewController$2;->dismiss(IZZ)Z

    :cond_9
    :goto_4
    return-void
.end method
