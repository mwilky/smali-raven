.class public final Lcom/android/systemui/wmshell/WMShell$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "WMShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wmshell/WMShell;->initPip(Lcom/android/wm/shell/pip/Pip;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wmshell/WMShell;

.field public final synthetic val$pip:Lcom/android/wm/shell/pip/Pip;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/pip/Pip;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$2;->this$0:Lcom/android/systemui/wmshell/WMShell;

    iput-object p2, p0, Lcom/android/systemui/wmshell/WMShell$2;->val$pip:Lcom/android/wm/shell/pip/Pip;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardDismissAnimationFinished()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$2;->val$pip:Lcom/android/wm/shell/pip/Pip;

    invoke-interface {p0}, Lcom/android/wm/shell/pip/Pip;->onKeyguardDismissAnimationFinished()V

    return-void
.end method

.method public final onKeyguardVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell$2;->val$pip:Lcom/android/wm/shell/pip/Pip;

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$2;->this$0:Lcom/android/systemui/wmshell/WMShell;

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isAnimatingBetweenKeyguardAndSurfaceBehind()Z

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/android/wm/shell/pip/Pip;->onKeyguardVisibilityChanged(ZZ)V

    return-void
.end method
