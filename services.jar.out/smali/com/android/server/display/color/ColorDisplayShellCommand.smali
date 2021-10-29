.class Lcom/android/server/display/color/ColorDisplayShellCommand;
.super Landroid/os/ShellCommand;
.source "ColorDisplayShellCommand.java"


# static fields
.field private static final ERROR:I = -0x1

.field private static final SUCCESS:I = 0x0

.field private static final USAGE:Ljava/lang/String; = "usage: cmd color_display SUBCOMMAND [ARGS]\n    help\n      Shows this message.\n    set-saturation LEVEL\n      Sets the device saturation to the given LEVEL, 0-100 inclusive.\n    set-layer-saturation LEVEL CALLER_PACKAGE TARGET_PACKAGE\n      Sets the saturation LEVEL for all layers of the TARGET_PACKAGE, attributed\n      to the CALLER_PACKAGE. The lowest LEVEL from any CALLER_PACKAGE is applied.\n"


# instance fields
.field private final mService:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/display/color/ColorDisplayService;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayShellCommand;->mService:Lcom/android/server/display/color/ColorDisplayService;

    return-void
.end method

.method private getLevel()I
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: Required argument LEVEL is unspecified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    if-ltz v2, :cond_2

    const/16 v3, 0x64

    if-le v2, v3, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: LEVEL argument must be an integer between 0 and 100"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v2

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: LEVEL argument is not an integer"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method private getPackageName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private setLayerSaturation()I
    .locals 6

    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayShellCommand;->getLevel()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayShellCommand;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: CALLER_PACKAGE must be an installed package name"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayShellCommand;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: TARGET_PACKAGE must be an installed package name"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayShellCommand;->mService:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/display/color/ColorDisplayService;->setAppSaturationLevelInternal(Ljava/lang/String;Ljava/lang/String;I)Z

    const/4 v1, 0x0

    return v1
.end method

.method private setSaturation()I
    .locals 2

    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayShellCommand;->getLevel()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayShellCommand;->mService:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v1, v0}, Lcom/android/server/display/color/ColorDisplayService;->setSaturationLevelInternal(I)V

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

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
    const-string/jumbo v1, "set-saturation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "set-layer-saturation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayShellCommand;->setLayerSaturation()I

    move-result v0

    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayShellCommand;->setSaturation()I

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xea71fd9 -> :sswitch_1
        0x2b487a1d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "usage: cmd color_display SUBCOMMAND [ARGS]\n    help\n      Shows this message.\n    set-saturation LEVEL\n      Sets the device saturation to the given LEVEL, 0-100 inclusive.\n    set-layer-saturation LEVEL CALLER_PACKAGE TARGET_PACKAGE\n      Sets the saturation LEVEL for all layers of the TARGET_PACKAGE, attributed\n      to the CALLER_PACKAGE. The lowest LEVEL from any CALLER_PACKAGE is applied.\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method
