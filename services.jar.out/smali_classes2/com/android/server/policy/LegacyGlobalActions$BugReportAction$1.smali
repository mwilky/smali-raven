.class public Lcom/android/server/policy/LegacyGlobalActions$BugReportAction$1;
.super Ljava/lang/Object;
.source "LegacyGlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction$1;->this$1:Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction$1;->this$1:Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;

    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {p0}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$fgetmContext(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object p0

    const/16 v0, 0x124

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->requestInteractiveBugReport()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
