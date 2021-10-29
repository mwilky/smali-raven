.class public abstract Lcom/android/systemui/demomode/dagger/DemoModeModule;
.super Ljava/lang/Object;
.source "DemoModeModule.java"


# direct methods
.method static provideDemoModeController(Landroid/content/Context;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/settings/GlobalSettings;)Lcom/android/systemui/demomode/DemoModeController;
    .locals 1

    new-instance v0, Lcom/android/systemui/demomode/DemoModeController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/demomode/DemoModeController;-><init>(Landroid/content/Context;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/settings/GlobalSettings;)V

    invoke-virtual {v0}, Lcom/android/systemui/demomode/DemoModeController;->initialize()V

    return-object v0
.end method
