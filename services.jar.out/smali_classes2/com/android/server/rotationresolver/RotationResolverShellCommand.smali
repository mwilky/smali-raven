.class final Lcom/android/server/rotationresolver/RotationResolverShellCommand;
.super Landroid/os/ShellCommand;
.source "RotationResolverShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;
    }
.end annotation


# static fields
.field private static final INITIAL_RESULT_CODE:I = -0x1

.field static final sTestableRotationCallbackInternal:Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;


# instance fields
.field private final mService:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;

    invoke-direct {v0}, Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;-><init>()V

    sput-object v0, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->sTestableRotationCallbackInternal:Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;

    return-void
.end method

.method constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->mService:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    return-void
.end method

.method private getBoundPackageName()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->mService:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    invoke-virtual {v1}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method

.method private getLastResolution()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    sget-object v1, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->sTestableRotationCallbackInternal:Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;

    invoke-virtual {v1}, Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;->getLastCallbackCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    const/4 v1, 0x0

    return v1
.end method

.method private runResolveRotation()I
    .locals 8

    new-instance v7, Landroid/service/rotationresolver/RotationResolutionRequest;

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x7d0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/service/rotationresolver/RotationResolutionRequest;-><init>(Ljava/lang/String;IIZJ)V

    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->mService:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    sget-object v2, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->sTestableRotationCallbackInternal:Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;

    new-instance v3, Landroid/os/CancellationSignal;

    invoke-direct {v3}, Landroid/os/CancellationSignal;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->resolveRotationLocked(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/CancellationSignal;)V

    const/4 v1, 0x0

    return v1
.end method

.method private setTemporaryService(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->mService:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    invoke-virtual {v2}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->getMaster()Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/rotationresolver/RotationResolverManagerService;

    iget-object v3, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->mService:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    invoke-virtual {v3}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->resetTemporaryService(I)V

    const-string v2, "RotationResolverService temporary reset. "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->mService:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    invoke-virtual {v3}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->getMaster()Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/rotationresolver/RotationResolverManagerService;

    iget-object v4, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->mService:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    invoke-virtual {v4}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4, p1, v2}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->setTemporaryService(ILjava/lang/String;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RotationResolverService temporarily set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

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
    const-string v1, "get-last-resolution"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v1, "set-temporary-service"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "resolve-rotation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_3
    const-string v1, "get-bound-package"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->setTemporaryService(Ljava/lang/String;)I

    move-result v0

    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->getBoundPackageName()I

    move-result v0

    return v0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->getLastResolution()I

    move-result v0

    return v0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->runResolveRotation()I

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c399b40 -> :sswitch_3
        0x16ed7a3f -> :sswitch_2
        0x41db2e8e -> :sswitch_1
        0x6c821bcc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Rotation Resolver commands: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const-string v1, "  resolve-rotation: request a rotation resolution."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  get-last-resolution: show the last rotation resolution result."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  get-bound-package: print the bound package that implements the service."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set-temporary-service [COMPONENT_NAME DURATION]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Temporarily (for DURATION ms) changes the service implementation."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    To reset, call with no argument."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
