.class Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$2;
.super Landroid/os/ShellCommand;
.source "SensorPrivacyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$2;->this$1:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 8

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$2;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$2;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$2;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "reset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :goto_0
    move v2, v5

    :goto_1
    const/4 v6, 0x4

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$2;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2

    return v2

    :pswitch_0
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$2;->this$1:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$2;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->access$2200(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const-string v3, "Invalid sensor"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_2
    iget-object v3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$2;->this$1:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-static {v3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->access$2300(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;)V

    iget-object v3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$2;->this$1:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-static {v3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->access$2400(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v5, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$2;->this$1:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-static {v5}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->access$2500(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    if-eqz v5, :cond_3

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->delete(I)V

    :cond_3
    iget-object v6, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$2;->this$1:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-static {v6}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->access$2600(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;)V

    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$2;->this$1:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$2;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->access$2200(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    const-string v3, "Invalid sensor"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_4
    iget-object v3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$2;->this$1:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-virtual {v3, v0, v6, v2, v4}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->setIndividualSensorPrivacy(IIIZ)V

    goto :goto_2

    :pswitch_2
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$2;->this$1:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$2;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->access$2200(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    const-string v3, "Invalid sensor"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_5
    iget-object v5, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$2;->this$1:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-virtual {v5, v0, v6, v2, v3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->setIndividualSensorPrivacy(IIIZ)V

    nop

    :goto_2
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4d6ada7d -> :sswitch_2
        0x6761d4f -> :sswitch_1
        0x639e22e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$2;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Sensor privacy manager (sensor_privacy) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  enable USER_ID SENSOR"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Enable privacy for a certain sensor."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  disable USER_ID SENSOR"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Disable privacy for a certain sensor."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  reset USER_ID SENSOR"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Reset privacy state for a certain sensor."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
