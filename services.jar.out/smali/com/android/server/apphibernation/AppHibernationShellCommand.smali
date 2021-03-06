.class final Lcom/android/server/apphibernation/AppHibernationShellCommand;
.super Landroid/os/ShellCommand;
.source "AppHibernationShellCommand.java"


# static fields
.field private static final ERROR:I = -0x1

.field private static final GLOBAL_OPT:Ljava/lang/String; = "--global"

.field private static final SUCCESS:I = 0x0

.field private static final USER_OPT:Ljava/lang/String; = "--user"


# instance fields
.field private final mService:Lcom/android/server/apphibernation/AppHibernationService;


# direct methods
.method constructor <init>(Lcom/android/server/apphibernation/AppHibernationService;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationShellCommand;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    return-void
.end method

.method private runGetState()I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, -0x2

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v2, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :sswitch_1
    const-string v2, "--global"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :goto_1
    move v4, v5

    :goto_2
    packed-switch v4, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_3

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    nop

    :goto_3
    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v6, "Error: No package specified"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_2
    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/server/apphibernation/AppHibernationShellCommand;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v5, v2}, Lcom/android/server/apphibernation/AppHibernationService;->isHibernatingGlobally(Ljava/lang/String;)Z

    move-result v5

    goto :goto_4

    :cond_3
    iget-object v5, p0, Lcom/android/server/apphibernation/AppHibernationShellCommand;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v5, v2, v1}, Lcom/android/server/apphibernation/AppHibernationService;->isHibernatingForUser(Ljava/lang/String;I)Z

    move-result v5

    :goto_4
    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->println(Z)V

    return v4

    :sswitch_data_0
    .sparse-switch
        0x44f65143 -> :sswitch_1
        0x4f7b216b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runSetState()I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, -0x2

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v2, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :sswitch_1
    const-string v2, "--global"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :goto_1
    move v4, v5

    :goto_2
    packed-switch v4, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_3

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    nop

    :goto_3
    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v6, "Error: no package specified"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v7, "Error: No state to set specified"

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_3
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v0, :cond_4

    iget-object v7, p0, Lcom/android/server/apphibernation/AppHibernationShellCommand;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v7, v2, v5}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingGlobally(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_4
    iget-object v7, p0, Lcom/android/server/apphibernation/AppHibernationShellCommand;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v7, v2, v1, v5}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingForUser(Ljava/lang/String;IZ)V

    :goto_4
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x44f65143 -> :sswitch_1
        0x4f7b216b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/apphibernation/AppHibernationShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v1, "get-state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "set-state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/server/apphibernation/AppHibernationShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/apphibernation/AppHibernationShellCommand;->runGetState()I

    move-result v0

    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/apphibernation/AppHibernationShellCommand;->runSetState()I

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x1dc3bc9a -> :sswitch_1
        -0x10f8f0a6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "App hibernation (app_hibernation) commands: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  set-state [--user USER_ID] [--global] PACKAGE true|false"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Sets the hibernation state of the package to value specified. Optionally"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    may specify a user id or set global hibernation state."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  get-state [--user USER_ID] [--global] PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Gets the hibernation state of the package. Optionally may specify a user"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    id or request global hibernation state."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
