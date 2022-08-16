.class public final synthetic Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:[Ljava/lang/String;

.field public final synthetic f$3:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;[Z[Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;

    iput-object p2, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl$$ExternalSyntheticLambda0;->f$1:[Z

    iput-object p3, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl$$ExternalSyntheticLambda0;->f$2:[Ljava/lang/String;

    iput-object p4, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl$$ExternalSyntheticLambda0;->f$3:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;

    iget-object v1, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl$$ExternalSyntheticLambda0;->f$1:[Z

    iget-object v2, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl$$ExternalSyntheticLambda0;->f$2:[Ljava/lang/String;

    iget-object p0, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl$$ExternalSyntheticLambda0;->f$3:Ljava/io/PrintWriter;

    iget-object v0, v0, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;->this$0:Lcom/android/wm/shell/ShellCommandHandlerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ge v3, v5, :cond_0

    goto/16 :goto_2

    :cond_0
    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x5

    const/4 v10, 0x3

    const/4 v11, 0x4

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v8, "setSideStagePosition"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v7, v9

    goto :goto_0

    :sswitch_1
    const-string/jumbo v8, "removeFromSideStage"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v7, v11

    goto :goto_0

    :sswitch_2
    const-string/jumbo v8, "pair"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v7, v10

    goto :goto_0

    :sswitch_3
    const-string v8, "help"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    move v7, v5

    goto :goto_0

    :sswitch_4
    const-string v8, "moveToSideStage"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    move v7, v4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v8, "unpair"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    move v7, v6

    :goto_0
    const-string v3, "Error: task id should be provided as arguments"

    if-eqz v7, :cond_11

    if-eq v7, v4, :cond_e

    if-eq v7, v5, :cond_d

    if-eq v7, v10, :cond_b

    if-eq v7, v11, :cond_9

    if-eq v7, v9, :cond_7

    goto/16 :goto_2

    :cond_7
    array-length v3, v2

    if-ge v3, v10, :cond_8

    const-string v0, "Error: side stage position should be provided as arguments"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    new-instance p0, Ljava/lang/Integer;

    aget-object v2, v2, v5

    invoke-direct {p0, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget-object v0, v0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mSplitScreenOptional:Ljava/util/Optional;

    new-instance v2, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_3

    :cond_9
    array-length v7, v2

    if-ge v7, v10, :cond_a

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    new-instance p0, Ljava/lang/Integer;

    aget-object v2, v2, v5

    invoke-direct {p0, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget-object v0, v0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mSplitScreenOptional:Ljava/util/Optional;

    new-instance v2, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v6}, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda6;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_3

    :cond_b
    array-length v3, v2

    if-ge v3, v11, :cond_c

    const-string v0, "Error: two task ids should be provided as arguments"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    new-instance p0, Ljava/lang/Integer;

    aget-object v3, v2, v5

    invoke-direct {p0, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-instance v3, Ljava/lang/Integer;

    aget-object v2, v2, v10

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, v0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mAppPairsOptional:Ljava/util/Optional;

    new-instance v3, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v2}, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda5;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_3

    :cond_d
    const-string v0, "Window Manager Shell commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  <no arguments provided>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Dump Window Manager Shell internal state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  pair <taskId1> <taskId2>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  unpair <taskId>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Pairs/unpairs tasks with given ids."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  moveToSideStage <taskId> <SideStagePosition>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Move a task with given id in split-screen mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  removeFromSideStage <taskId>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Remove a task with given id in split-screen mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  setSideStageOutline <true/false>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Enable/Disable outline on the side-stage."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  setSideStagePosition <SideStagePosition>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Sets the position of the side-stage."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_e
    array-length v7, v2

    if-ge v7, v10, :cond_f

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_f
    new-instance p0, Ljava/lang/Integer;

    aget-object v3, v2, v5

    invoke-direct {p0, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    array-length v3, v2

    if-le v3, v10, :cond_10

    new-instance v3, Ljava/lang/Integer;

    aget-object v2, v2, v10

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_10
    move v2, v4

    :goto_1
    iget-object v0, v0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mSplitScreenOptional:Ljava/util/Optional;

    new-instance v3, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, v2}, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda7;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_3

    :cond_11
    array-length v3, v2

    if-ge v3, v10, :cond_12

    const-string v0, "Error: task id should be provided as an argument"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    move v4, v6

    goto :goto_3

    :cond_12
    new-instance p0, Ljava/lang/Integer;

    aget-object v2, v2, v5

    invoke-direct {p0, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget-object v0, v0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mAppPairsOptional:Ljava/util/Optional;

    new-instance v2, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_3
    aput-boolean v4, v1, v6

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3216830d -> :sswitch_5
        -0x56f90e5 -> :sswitch_4
        0x30cf41 -> :sswitch_3
        0x3462da -> :sswitch_2
        0x119de939 -> :sswitch_1
        0x5abe6dee -> :sswitch_0
    .end sparse-switch
.end method
