.class public interface abstract Lcom/android/wm/shell/splitscreen/SplitScreen;
.super Ljava/lang/Object;
.source "SplitScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;
    }
.end annotation


# virtual methods
.method public createExternalInterface()Lcom/android/wm/shell/splitscreen/ISplitScreen;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract onFinishedWakingUp()V
.end method

.method public abstract onKeyguardVisibilityChanged(Z)V
.end method
