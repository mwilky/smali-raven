.class Lcom/android/server/am/AppExitInfoTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "AppExitInfoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppExitInfoTracker;->registerForPackageRemoval()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppExitInfoTracker;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppExitInfoTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$2;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v2, -0x2710

    const-string v3, "android.intent.extra.UID"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker$2;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/server/am/AppExitInfoTracker;->onPackageRemoved(Ljava/lang/String;IZ)V

    return-void
.end method
