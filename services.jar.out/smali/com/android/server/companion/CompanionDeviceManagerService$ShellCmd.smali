.class Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;
.super Landroid/os/ShellCommand;
.source "CompanionDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/CompanionDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShellCmd"
.end annotation


# static fields
.field public static final USAGE:Ljava/lang/String; = "help\nlist USER_ID\nassociate USER_ID PACKAGE MAC_ADDRESS\ndisassociate USER_ID PACKAGE MAC_ADDRESS"


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.MANAGE_COMPANION_DEVICES"

    const-string v1, "ShellCmd"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getNextArgInt()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public synthetic lambda$onCommand$0$CompanionDeviceManagerService$ShellCmd(Landroid/companion/Association;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/companion/Association;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/companion/Association;->getDeviceMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 13

    const/4 v0, -0x1

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "simulate_disconnect"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "associate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v2, "disassociate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "simulate_connect"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->onDeviceDisconnected(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->onDeviceConnected(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->getNextArgInt()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/companion/CompanionDeviceManagerService;->removeAssociation(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->getNextArgInt()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    new-instance v12, Landroid/companion/Association;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object v4, v12

    move v5, v0

    invoke-direct/range {v4 .. v11}, Landroid/companion/Association;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    invoke-virtual {v2, v12, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->addAssociation(Landroid/companion/Association;I)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->getNextArgInt()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$3200(Lcom/android/server/companion/CompanionDeviceManagerService;I)Ljava/util/Set;

    move-result-object v0

    new-instance v2, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;)V

    invoke-static {v0, v2}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :goto_1
    return v3

    :goto_2
    return v0

    :catchall_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error running a command: $ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CompanionDeviceManagerService"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x4054231 -> :sswitch_4
        0x32b09e -> :sswitch_3
        0x2ebfca50 -> :sswitch_2
        0x5e900f1e -> :sswitch_1
        0x6de8ad97 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "help\nlist USER_ID\nassociate USER_ID PACKAGE MAC_ADDRESS\ndisassociate USER_ID PACKAGE MAC_ADDRESS"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
