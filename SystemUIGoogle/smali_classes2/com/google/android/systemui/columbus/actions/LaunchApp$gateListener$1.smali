.class public final Lcom/google/android/systemui/columbus/actions/LaunchApp$gateListener$1;
.super Ljava/lang/Object;
.source "LaunchApp.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/gates/Gate$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/actions/LaunchApp;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherApps;Landroid/app/IActivityManager;Landroid/os/UserManager;Lcom/google/android/systemui/columbus/ColumbusSettings;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGateChanged(Lcom/google/android/systemui/columbus/gates/Gate;)V
    .locals 1

    const-string v0, "gate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->access$updateAvailableAppsAndShortcutsAsync(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V

    :cond_0
    return-void
.end method
