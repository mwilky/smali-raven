.class Lcom/android/server/pm/ShortcutService$5;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$1300(Lcom/android/server/pm/ShortcutService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->handleLocaleChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    const-string v2, "Exception in mReceiver.onReceive"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
