.class public final Lcom/android/systemui/wmshell/WMShell$14;
.super Ljava/lang/Object;
.source "WMShell.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wmshell/WMShell;->initCompatUi(Lcom/android/wm/shell/compatui/CompatUI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wmshell/WMShell;

.field public final synthetic val$sizeCompatUI:Lcom/android/wm/shell/compatui/CompatUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/compatui/CompatUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$14;->this$0:Lcom/android/systemui/wmshell/WMShell;

    iput-object p2, p0, Lcom/android/systemui/wmshell/WMShell$14;->val$sizeCompatUI:Lcom/android/wm/shell/compatui/CompatUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell$14;->val$sizeCompatUI:Lcom/android/wm/shell/compatui/CompatUI;

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$14;->this$0:Lcom/android/systemui/wmshell/WMShell;

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/wm/shell/compatui/CompatUI;->onKeyguardShowingChanged(Z)V

    return-void
.end method
