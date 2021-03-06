.class final Lcom/android/server/timezonedetector/location/TestCommand;
.super Ljava/lang/Object;
.source "TestCommand.java"


# static fields
.field private static final SHELL_ARG_PATTERN:Ljava/util/regex/Pattern;

.field private static final SHELL_ARG_VALUE_SPLIT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final mArgs:Landroid/os/Bundle;

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "([^=]+)=([^:]+):(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/timezonedetector/location/TestCommand;->SHELL_ARG_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "&"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/timezonedetector/location/TestCommand;->SHELL_ARG_VALUE_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/TestCommand;->mName:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/TestCommand;->mArgs:Landroid/os/Bundle;

    return-void
.end method

.method private static checkSingleValue([Ljava/lang/String;)V
    .locals 3

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a single value, but there were multiple: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createForTests(Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/server/timezonedetector/location/TestCommand;
    .locals 1

    new-instance v0, Lcom/android/server/timezonedetector/location/TestCommand;

    invoke-direct {v0, p0, p1}, Lcom/android/server/timezonedetector/location/TestCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static createFromShellCommandArgs(Landroid/os/ShellCommand;)Lcom/android/server/timezonedetector/location/TestCommand;
    .locals 8

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/timezonedetector/location/TestCommand;->SHELL_ARG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/timezonedetector/location/TestCommand;->getTypedValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " does not match "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    new-instance v2, Lcom/android/server/timezonedetector/location/TestCommand;

    invoke-direct {v2, v0, v1}, Lcom/android/server/timezonedetector/location/TestCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v2
.end method

.method private static getTypedValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lcom/android/server/timezonedetector/location/TestCommand;->SHELL_ARG_VALUE_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v2, "string_array"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v2, "boolean"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_1

    :sswitch_2
    const-string v2, "long"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "string"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "double"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    return-object v0

    :pswitch_1
    invoke-static {v0}, Lcom/android/server/timezonedetector/location/TestCommand;->checkSingleValue([Ljava/lang/String;)V

    aget-object v1, v0, v3

    return-object v1

    :pswitch_2
    invoke-static {v0}, Lcom/android/server/timezonedetector/location/TestCommand;->checkSingleValue([Ljava/lang/String;)V

    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    :pswitch_3
    invoke-static {v0}, Lcom/android/server/timezonedetector/location/TestCommand;->checkSingleValue([Ljava/lang/String;)V

    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    :pswitch_4
    invoke-static {v0}, Lcom/android/server/timezonedetector/location/TestCommand;->checkSingleValue([Ljava/lang/String;)V

    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_4
        -0x352a9fef -> :sswitch_3
        0x32c67c -> :sswitch_2
        0x3db6c28 -> :sswitch_1
        0x184024ab -> :sswitch_0
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

.method public static printShellCommandEncodingHelp(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "Test commands are encoded on the command line as: <name> <arg>*"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "The <name> is a string"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "The <arg> encoding is: \"key=type:value\""

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "e.g. \"myKey=string:myValue\" represents an argument with the key \"myKey\" and a string value of \"myValue\""

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Values are one or more URI-encoded strings separated by & characters. Only some types support multiple values, e.g. string arrays."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Recognized types are: string, boolean, double, long, string_array."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "When passing test commands via adb shell, the & can be escaped by quoting the <arg> and escaping the & with \\"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "For example:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  $ adb shell ... my-command \"key1=string_array:value1\\&value2\""

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/server/timezonedetector/location/TestCommand;

    iget-object v3, p0, Lcom/android/server/timezonedetector/location/TestCommand;->mName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/timezonedetector/location/TestCommand;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/timezonedetector/location/TestCommand;->mArgs:Landroid/os/Bundle;

    iget-object v4, v2, Lcom/android/server/timezonedetector/location/TestCommand;->mArgs:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->kindofEquals(Landroid/os/BaseBundle;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getArgs()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/TestCommand;->mArgs:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/TestCommand;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/TestCommand;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/TestCommand;->mArgs:Landroid/os/Bundle;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TestCommand{mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/TestCommand;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/TestCommand;->mArgs:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
