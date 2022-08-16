.class public final Lcom/android/systemui/demomode/DemoModeController$tracker$1;
.super Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;
.source "DemoModeController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/demomode/DemoModeController;-><init>(Landroid/content/Context;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/settings/GlobalSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/demomode/DemoModeController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/demomode/DemoModeController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/demomode/DemoModeController$tracker$1;->this$0:Lcom/android/systemui/demomode/DemoModeController;

    invoke-direct {p0, p2}, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onDemoModeAvailabilityChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/demomode/DemoModeController$tracker$1;->this$0:Lcom/android/systemui/demomode/DemoModeController;

    iget-boolean p0, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->isDemoModeAvailable:Z

    iget-boolean v1, v0, Lcom/android/systemui/demomode/DemoModeController;->isInDemoMode:Z

    if-eqz v1, :cond_0

    if-nez p0, :cond_0

    iget-object p0, v0, Lcom/android/systemui/demomode/DemoModeController;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    const/4 v0, 0x0

    const-string/jumbo v1, "sysui_tuner_demo_on"

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->putInt(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onDemoModeFinished()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/demomode/DemoModeController$tracker$1;->this$0:Lcom/android/systemui/demomode/DemoModeController;

    iget-boolean v1, v0, Lcom/android/systemui/demomode/DemoModeController;->isInDemoMode:Z

    iget-boolean p0, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->isInDemoMode:Z

    if-eq v1, p0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/demomode/DemoModeController;->exitDemoMode()V

    :cond_0
    return-void
.end method

.method public final onDemoModeStarted()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/demomode/DemoModeController$tracker$1;->this$0:Lcom/android/systemui/demomode/DemoModeController;

    iget-boolean v1, v0, Lcom/android/systemui/demomode/DemoModeController;->isInDemoMode:Z

    iget-boolean p0, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->isInDemoMode:Z

    if-eq v1, p0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/demomode/DemoModeController;->enterDemoMode()V

    :cond_0
    return-void
.end method
