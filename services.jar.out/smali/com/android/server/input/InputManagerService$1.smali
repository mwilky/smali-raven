.class Lcom/android/server/input/InputManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$100(Lcom/android/server/input/InputManagerService;)V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$200(Lcom/android/server/input/InputManagerService;)V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$300(Lcom/android/server/input/InputManagerService;)V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    const-string/jumbo v1, "user switched"

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->access$400(Lcom/android/server/input/InputManagerService;Ljava/lang/String;)V

    return-void
.end method
