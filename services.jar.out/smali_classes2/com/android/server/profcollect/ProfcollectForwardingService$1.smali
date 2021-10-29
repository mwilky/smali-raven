.class Lcom/android/server/profcollect/ProfcollectForwardingService$1;
.super Landroid/os/UpdateEngineCallback;
.source "ProfcollectForwardingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/profcollect/ProfcollectForwardingService;->registerOTAObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;


# direct methods
.method constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$1;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-direct {p0}, Landroid/os/UpdateEngineCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayloadApplicationComplete(I)V
    .locals 0

    return-void
.end method

.method public onStatusUpdate(IF)V
    .locals 2

    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received OTA status update, status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", percent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProfcollectForwardingService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$1;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-static {v0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->access$900(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    :cond_1
    return-void
.end method
