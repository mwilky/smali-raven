.class public final Lcom/google/android/systemui/lowlightclock/LowLightDockManager$2;
.super Landroid/database/ContentObserver;
.source "LowLightDockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/lowlightclock/LowLightDockManager;-><init>(Landroid/content/Context;Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/PowerManager;Lcom/android/internal/logging/UiEventLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/lowlightclock/LowLightDockManager;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/lowlightclock/LowLightDockManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager$2;->this$0:Lcom/google/android/systemui/lowlightclock/LowLightDockManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager$2;->this$0:Lcom/google/android/systemui/lowlightclock/LowLightDockManager;

    invoke-virtual {p0}, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->updateScreenSaverEnabledSetting()V

    return-void
.end method
