.class final Lcom/google/android/systemui/columbus/actions/LaunchApp$onDismissKeyguardAction$1;
.super Ljava/lang/Object;
.source "LaunchApp.kt"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/actions/LaunchApp;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherApps;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/app/IActivityManager;Landroid/os/UserManager;Lcom/google/android/systemui/columbus/ColumbusSettings;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/settings/UserTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$onDismissKeyguardAction$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$onDismissKeyguardAction$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->access$launchUnsecureAppInternal(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V

    const/4 p0, 0x0

    return p0
.end method
