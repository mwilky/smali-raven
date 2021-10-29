.class public Lcom/android/server/pm/verify/domain/DomainVerificationShell;
.super Ljava/lang/Object;
.source "DomainVerificationShell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    return-void
.end method

.method private getRemainingArgs(Lcom/android/modules/utils/BasicShellCommandHandler;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/BasicShellCommandHandler;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private parseEnabled(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_1
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid boolean"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return v2

    :pswitch_1
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x36758e -> :sswitch_1
        0x5cb1923 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runGetAppLinkOwners(Lcom/android/modules/utils/BasicShellCommandHandler;)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v4, "--user"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_2

    :sswitch_1
    const-string v6, "--package"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :goto_1
    move v4, v2

    :goto_2
    packed-switch v4, :pswitch_data_0

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: unexpected option: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :pswitch_0
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v4, "Error: no package specified"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :pswitch_1
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    :cond_1
    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->getRemainingArgs(Lcom/android/modules/utils/BasicShellCommandHandler;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v6, "Error: no package name or domain specified"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "runSetAppLinksAllowed"

    invoke-direct {p0, v6, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->translateUserId(ILjava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_4
    new-instance v6, Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    const/16 v8, 0x78

    const-string v9, "  "

    invoke-direct {v6, v7, v9, v8}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    :try_start_0
    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    if-eqz v0, :cond_6

    const-string v7, "all"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_5

    const/4 v0, 0x0

    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    invoke-interface {v7, v6, v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;->printOwnersForPackage(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v4

    :try_start_2
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: package not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->close()V

    return v5

    :cond_6
    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    invoke-interface {v5, v6, v2, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;->printOwnersForDomains(Landroid/util/IndentingPrintWriter;Ljava/util/List;Ljava/lang/Integer;)V

    :cond_7
    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->close()V

    return v4

    :catchall_0
    move-exception v4

    :try_start_4
    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v4

    :sswitch_data_0
    .sparse-switch
        0x22819aa6 -> :sswitch_1
        0x4f7b216b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runGetAppLinks(Lcom/android/modules/utils/BasicShellCommandHandler;)Z
    .locals 9

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v4, "runGetAppLinks"

    invoke-direct {p0, v1, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->translateUserId(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    move-object v0, v1

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const/16 v6, 0x78

    const-string v7, "  "

    invoke-direct {v4, v5, v7, v6}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    :try_start_0
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    invoke-interface {v5, v4, v1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;->printState(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x1

    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->close()V

    return v3

    :catch_0
    move-exception v5

    :try_start_3
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " unavailable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->close()V

    return v3

    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v5

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v3
.end method

.method private runResetAppLinks(Lcom/android/modules/utils/BasicShellCommandHandler;)Z
    .locals 6

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v4, "runResetAppLinks"

    invoke-direct {p0, v1, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->translateUserId(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    move-object v0, v1

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->peekNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: no package specified"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_3
    const-string v3, "all"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->peekRemainingArgs()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :goto_2
    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v3, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;->clearUserStates(Ljava/util/List;I)V

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    invoke-interface {v4, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;->clearDomainVerificationState(Ljava/util/List;)V

    :goto_3
    const/4 v4, 0x1

    return v4
.end method

.method private runSetAppLinks(Lcom/android/modules/utils/BasicShellCommandHandler;)Z
    .locals 10

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v1, "--package"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v4, "Error: no package specified"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_2
    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x0

    :cond_3
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    sparse-switch v6, :sswitch_data_0

    :cond_4
    goto :goto_1

    :sswitch_0
    const-string v6, "STATE_DENIED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x6

    goto :goto_1

    :sswitch_1
    const-string v6, "STATE_NO_RESPONSE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v5, v3

    goto :goto_1

    :sswitch_2
    const-string v6, "STATE_SUCCESS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_3
    const-string v6, "3"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x7

    goto :goto_1

    :sswitch_4
    const-string v6, "2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x5

    goto :goto_1

    :sswitch_5
    const-string v6, "1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_6
    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v5, v7

    goto :goto_1

    :sswitch_7
    const-string v6, "STATE_APPROVED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x4

    :goto_1
    packed-switch v5, :pswitch_data_0

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid state option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :pswitch_0
    const/4 v5, 0x3

    goto :goto_2

    :pswitch_1
    const/4 v5, 0x2

    goto :goto_2

    :pswitch_2
    const/4 v5, 0x1

    goto :goto_2

    :pswitch_3
    const/4 v5, 0x0

    nop

    :goto_2
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->getRemainingArgs(Lcom/android/modules/utils/BasicShellCommandHandler;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v7, "No domains specified"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_5
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ne v8, v7, :cond_6

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v6, 0x0

    :cond_6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    invoke-interface {v1, v0, v5, v6}, Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;->setDomainVerificationStatusInternal(Ljava/lang/String;ILandroid/util/ArraySet;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return v7

    :catch_0
    move-exception v1

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :sswitch_data_0
    .sparse-switch
        -0x6077d53b -> :sswitch_7
        0x30 -> :sswitch_6
        0x31 -> :sswitch_5
        0x32 -> :sswitch_4
        0x33 -> :sswitch_3
        0xf723e15 -> :sswitch_2
        0x1cc39e31 -> :sswitch_1
        0x1fd8ef29 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private runSetAppLinksAllowed(Lcom/android/modules/utils/BasicShellCommandHandler;)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    const-string v2, "--package"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v2, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: unexpected option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v5, "Error: no package specified"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_3
    const-string v2, "all"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    :cond_4
    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v5, "Error: user ID not specified"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_5
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const-string v6, "Error: allowed setting not specified"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_6
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->parseEnabled(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "runSetAppLinksAllowed"

    invoke-direct {p0, v6, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->translateUserId(ILjava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v0, v5, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;->setDomainVerificationLinkHandlingAllowedInternal(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    const/4 v4, 0x1

    return v4

    :catch_0
    move-exception v6

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :catch_1
    move-exception v5

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: invalid allowed setting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4
.end method

.method private runSetAppLinksUserState(Lcom/android/modules/utils/BasicShellCommandHandler;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v4, "--user"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_2

    :sswitch_1
    const-string v6, "--package"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :goto_1
    move v4, v2

    :goto_2
    packed-switch v4, :pswitch_data_0

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: unknown option: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :pswitch_0
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :pswitch_1
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    :goto_3
    goto :goto_0

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v4, "Error: no package specified"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v4, "Error: User ID not specified"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v6, "runSetAppLinksUserState"

    invoke-direct {p0, v2, v6}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->translateUserId(ILjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v6, "Error: enabled param not specified"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_4
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->parseEnabled(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->getRemainingArgs(Lcom/android/modules/utils/BasicShellCommandHandler;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v8, "No domains specified"

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_5
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ne v8, v4, :cond_6

    const-string v8, "all"

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v7, 0x0

    :cond_6
    :try_start_1
    iget-object v8, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8, v9, v1, v6, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;->setDomainVerificationUserSelectionInternal(ILjava/lang/String;ZLandroid/util/ArraySet;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    return v4

    :catch_0
    move-exception v4

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package not found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :catch_1
    move-exception v4

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: invalid enabled param: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x22819aa6 -> :sswitch_1
        0x4f7b216b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runVerifyAppLinks(Lcom/android/modules/utils/BasicShellCommandHandler;)Z
    .locals 5

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_1

    const-string v1, "--re-verify"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    invoke-interface {v4, v1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;->verifyPackages(Ljava/util/List;Z)V

    const/4 v4, 0x1

    return v4
.end method

.method private translateUserId(ILjava/lang/String;)I
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v6, "pm command"

    move v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public printHelp(Ljava/io/PrintWriter;)V
    .locals 6

    const-string v0, "  get-app-links [--user <USER_ID>] [<PACKAGE>]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Prints the domain verification state for the given package, or for all"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    packages if none is specified. State codes are defined as follows:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "        - none: nothing has been recorded for this domain"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "        - verified: the domain has been successfully verified"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "        - approved: force approved, usually through shell"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "        - denied: force denied, usually through shell"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "        - migrated: preserved verification from a legacy response"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "        - restored: preserved verification from a user data restore"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "        - legacy_failure: rejected by a legacy verifier, unknown reason"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "        - system_configured: automatically approved by the device config"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "        - >= 1024: Custom error code which is specific to the device verifier"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --user <USER_ID>: include user selections (includes all domains, not"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "        just autoVerify ones)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  reset-app-links [--user <USER_ID>] [<PACKAGE>]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Resets domain verification state for the given package, or for all"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    packages if none is specified."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --user <USER_ID>: clear user selection state instead; note this means"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "        domain verification state will NOT be cleared"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      <PACKAGE>: the package to reset, or \"all\" to reset all packages"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  verify-app-links [--re-verify] [<PACKAGE>]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Broadcasts a verification request for the given package, or for all"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    packages if none is specified. Only sends if the package has previously"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    not recorded a response."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --re-verify: send even if the package has recorded a response"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set-app-links [--package <PACKAGE>] <STATE> <DOMAINS>..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Manually set the state of a domain for a package. The domain must be"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    declared by the package as autoVerify for this to work. This command"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    will not report a failure for domains that could not be applied."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --package <PACKAGE>: the package to set, or \"all\" to set all packages"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      <STATE>: the code to set the domains to, valid values are:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "        STATE_NO_RESPONSE (0): reset as if no response was ever recorded."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "        STATE_SUCCESS (1): treat domain as successfully verified by domain."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "          verification agent. Note that the domain verification agent can"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "          override this."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "        STATE_APPROVED (2): treat domain as always approved, preventing the"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "           domain verification agent from changing it."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "        STATE_DENIED (3): treat domain as always denied, preveting the domain"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "          verification agent from changing it."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      <DOMAINS>: space separated list of domains to change, or \"all\" to"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        change every domain."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  set-app-links-user-selection --user <USER_ID> [--package <PACKAGE>]"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "      <ENABLED> <DOMAINS>..."

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "    Manually set the state of a host user selection for a package. The domain"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "    must be declared by the package for this to work. This command will not"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "    report a failure for domains that could not be applied."

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "      --user <USER_ID>: the user to change selections for"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "      --package <PACKAGE>: the package to set"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "      <ENABLED>: whether or not to approve the domain"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set-app-links-allowed --user <USER_ID> [--package <PACKAGE>] <ALLOWED>"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Toggle the auto verified link handling setting for a package."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "        packages will be reset if no one package is specified."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      <ALLOWED>: true to allow the package to open auto verified links, false"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "        to disable"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  get-app-link-owners [--user <USER_ID>] [--package <PACKAGE>] [<DOMAINS>]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print the owners for a specific domain for a given user in low to high"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    priority order."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --user <USER_ID>: the user to query for"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --package <PACKAGE>: optionally also print for all web domains declared"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "        by a package, or \"all\" to print all packages"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --<DOMAINS>: space separated list of domains to query for"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public runCommand(Lcom/android/modules/utils/BasicShellCommandHandler;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "verify-app-links"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "get-app-link-owners"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string v0, "reset-app-links"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "set-app-links"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "set-app-links-allowed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "set-app-links-user-selection"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_6
    const-string v0, "get-app-links"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->runGetAppLinkOwners(Lcom/android/modules/utils/BasicShellCommandHandler;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->runSetAppLinksAllowed(Lcom/android/modules/utils/BasicShellCommandHandler;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->runSetAppLinksUserState(Lcom/android/modules/utils/BasicShellCommandHandler;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->runSetAppLinks(Lcom/android/modules/utils/BasicShellCommandHandler;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->runVerifyAppLinks(Lcom/android/modules/utils/BasicShellCommandHandler;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->runResetAppLinks(Lcom/android/modules/utils/BasicShellCommandHandler;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->runGetAppLinks(Lcom/android/modules/utils/BasicShellCommandHandler;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f8f40aa -> :sswitch_6
        -0x7cbfd22b -> :sswitch_5
        -0x6e528fc3 -> :sswitch_4
        -0x516af29e -> :sswitch_3
        -0x313515f1 -> :sswitch_2
        0x45339730 -> :sswitch_1
        0x4f30e8b9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
