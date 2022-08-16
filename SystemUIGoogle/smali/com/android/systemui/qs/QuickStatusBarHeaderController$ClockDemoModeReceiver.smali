.class public final Lcom/android/systemui/qs/QuickStatusBarHeaderController$ClockDemoModeReceiver;
.super Ljava/lang/Object;
.source "QuickStatusBarHeaderController.java"

# interfaces
.implements Lcom/android/systemui/demomode/DemoMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QuickStatusBarHeaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClockDemoModeReceiver"
.end annotation


# instance fields
.field public mClockView:Lcom/android/systemui/statusbar/policy/Clock;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/Clock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$ClockDemoModeReceiver;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    return-void
.end method


# virtual methods
.method public final demoCommands()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "clock"

    invoke-static {p0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$ClockDemoModeReceiver;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/Clock;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onDemoModeFinished()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$ClockDemoModeReceiver;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->onDemoModeFinished()V

    return-void
.end method

.method public final onDemoModeStarted()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$ClockDemoModeReceiver;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    return-void
.end method
