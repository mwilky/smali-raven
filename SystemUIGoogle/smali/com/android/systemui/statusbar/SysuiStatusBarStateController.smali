.class public interface abstract Lcom/android/systemui/statusbar/SysuiStatusBarStateController;
.super Ljava/lang/Object;
.source "SysuiStatusBarStateController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;
    }
.end annotation


# virtual methods
.method public abstract addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract fromShadeLocked()Z
.end method

.method public abstract getCurrentOrUpcomingState()I
.end method

.method public abstract getInterpolatedDozeAmount()F
.end method

.method public abstract goingToFullShade()Z
.end method

.method public abstract isKeyguardRequested()Z
.end method

.method public abstract leaveOpenOnKeyguardHide()Z
.end method

.method public abstract setAndInstrumentDozeAmount(Lcom/android/systemui/statusbar/phone/NotificationPanelView;FZ)V
.end method

.method public abstract setIsDozing(Z)Z
.end method

.method public abstract setKeyguardRequested(Z)V
.end method

.method public abstract setLeaveOpenOnKeyguardHide(Z)V
.end method

.method public abstract setPanelExpanded(Z)Z
.end method

.method public abstract setPulsing(Z)V
.end method

.method public setState(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(IZ)Z

    return-void
.end method

.method public abstract setState(IZ)Z
.end method

.method public abstract setSystemBarAttributes(IILandroid/view/InsetsVisibilities;Ljava/lang/String;)V
.end method

.method public abstract setUpcomingState()V
.end method
