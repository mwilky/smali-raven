.class public final Lcom/google/android/systemui/columbus/actions/LaunchApp$keyguardUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "LaunchApp.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/actions/LaunchApp;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherApps;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/app/IActivityManager;Landroid/os/UserManager;Lcom/google/android/systemui/columbus/ColumbusSettings;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/settings/UserTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/actions/LaunchApp;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$keyguardUpdateMonitorCallback$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$keyguardUpdateMonitorCallback$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardBouncerChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$keyguardUpdateMonitorCallback$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->access$getKeyguardUpdateMonitor$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$keyguardUpdateMonitorCallback$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->access$getMainHandler$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/google/android/systemui/columbus/actions/LaunchApp$keyguardUpdateMonitorCallback$1$onKeyguardBouncerChanged$1;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$keyguardUpdateMonitorCallback$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$keyguardUpdateMonitorCallback$1;->$context:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp$keyguardUpdateMonitorCallback$1$onKeyguardBouncerChanged$1;-><init>(Lcom/google/android/systemui/columbus/actions/LaunchApp;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
