.class public final Lcom/android/systemui/wmshell/WMShell$11;
.super Ljava/lang/Object;
.source "WMShell.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wmshell/WMShell;->initOneHanded(Lcom/android/wm/shell/onehanded/OneHanded;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/onehanded/OneHanded;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$11;->val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraLaunchGestureDetected(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$11;->val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    invoke-interface {p0}, Lcom/android/wm/shell/onehanded/OneHanded;->stopOneHanded()V

    return-void
.end method

.method public final setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .locals 0

    if-nez p1, :cond_0

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$11;->val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Lcom/android/wm/shell/onehanded/OneHanded;->stopOneHanded(I)V

    :cond_0
    return-void
.end method