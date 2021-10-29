.class public Lcom/android/server/location/contexthub/ContextHubShellCommand;
.super Landroid/os/ShellCommand;
.source "ContextHubShellCommand.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInternal:Lcom/android/server/location/contexthub/ContextHubService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/contexthub/ContextHubService;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubShellCommand;->mInternal:Lcom/android/server/location/contexthub/ContextHubService;

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubShellCommand;->mContext:Landroid/content/Context;

    return-void
.end method

.method private runDisableAuth()I
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubShellCommand;->mInternal:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/server/location/contexthub/ContextHubService;->denyClientAuthState(ILjava/lang/String;J)V

    const/4 v4, 0x0

    return v4
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubShellCommand;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_CONTEXT_HUB"

    const-string v2, "ContextHubShellCommand"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "deny"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubShellCommand;->runDisableAuth()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "ContextHub commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  deny [contextHubId] [packageName] [nanoAppId]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Immediately transitions the package\'s authentication state to denied so"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    can no longer communciate with the nanoapp."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
