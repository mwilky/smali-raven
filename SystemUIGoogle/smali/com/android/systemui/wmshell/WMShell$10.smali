.class public final Lcom/android/systemui/wmshell/WMShell$10;
.super Ljava/lang/Object;
.source "WMShell.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


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

    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$10;->val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScreenTurningOff()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$10;->val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    const/4 v0, 0x7

    invoke-interface {p0, v0}, Lcom/android/wm/shell/onehanded/OneHanded;->stopOneHanded(I)V

    return-void
.end method
