.class public Lcom/android/server/graphics/fonts/FontManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "FontManagerShellCommand.java"


# static fields
.field private static final MAX_SIGNATURE_FILE_SIZE_BYTES:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "FontManagerShellCommand"


# instance fields
.field private final mService:Lcom/android/server/graphics/fonts/FontManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/graphics/fonts/FontManagerService;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    return-void
.end method

.method private clear(Landroid/os/ShellCommand;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    invoke-virtual {v0}, Lcom/android/server/graphics/fonts/FontManagerService;->clearUpdates()V

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private dump(Landroid/os/ShellCommand;)I
    .locals 8

    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    invoke-virtual {v0}, Lcom/android/server/graphics/fonts/FontManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "FontManagerShellCommand"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    new-instance v1, Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "  "

    invoke-direct {v1, v2, v3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    invoke-virtual {v3}, Lcom/android/server/graphics/fonts/FontManagerService;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object v3

    if-nez v2, :cond_1

    invoke-direct {p0, v1, v3}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpFontConfig(Landroid/util/IndentingPrintWriter;Landroid/text/FontConfig;)V

    goto :goto_0

    :cond_1
    nop

    invoke-static {v3}, Landroid/graphics/fonts/SystemFonts;->buildSystemFallback(Landroid/text/FontConfig;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/graphics/fonts/FontFamily;

    if-nez v5, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Font Family \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\" not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1, v5}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpFallback(Landroid/util/IndentingPrintWriter;[Landroid/graphics/fonts/FontFamily;)V

    :goto_0
    const/4 v4, 0x0

    return v4
.end method

.method private dumpFallback(Landroid/util/IndentingPrintWriter;[Landroid/graphics/fonts/FontFamily;)V
    .locals 3

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    invoke-direct {p0, p1, v2}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpFamily(Landroid/util/IndentingPrintWriter;Landroid/graphics/fonts/FontFamily;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dumpFamily(Landroid/util/IndentingPrintWriter;Landroid/graphics/fonts/FontFamily;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Family:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/graphics/fonts/FontFamily;->getLangTags()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, " langTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/fonts/FontFamily;->getLangTags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/fonts/FontFamily;->getVariant()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " variant = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/fonts/FontFamily;->getVariant()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_0
    const-string v1, "Elegant"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string v1, "Compact"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2}, Landroid/graphics/fonts/FontFamily;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :try_start_0
    invoke-virtual {p2, v1}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpFont(Landroid/util/IndentingPrintWriter;Landroid/graphics/fonts/Font;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    throw v2

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dumpFont(Landroid/util/IndentingPrintWriter;Landroid/graphics/fonts/Font;)V
    .locals 4

    invoke-virtual {p2}, Landroid/graphics/fonts/Font;->getFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string v2, "[Not a file]"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ", index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p2}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v3, v2

    if-eqz v3, :cond_2

    const-string v3, ", axes = \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/graphics/fonts/FontVariationAxis;->toFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private dumpFontConfig(Landroid/util/IndentingPrintWriter;Landroid/text/FontConfig;)V
    .locals 8

    invoke-virtual {p2}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v0

    const-string v1, "Named Font Families"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/FontConfig$FontFamily;

    invoke-virtual {v2}, Landroid/text/FontConfig$FontFamily;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Named Family ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/text/FontConfig$FontFamily;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/FontConfig$Font;

    invoke-direct {p0, p1, v5}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpSingleFontConfig(Landroid/util/IndentingPrintWriter;Landroid/text/FontConfig$Font;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v1, "Dump Fallback Families"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/FontConfig$FontFamily;

    invoke-virtual {v3}, Landroid/text/FontConfig$FontFamily;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_6

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Fallback Family ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: lang=\""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/text/FontConfig$FontFamily;->getVariant()I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ", variant="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/text/FontConfig$FontFamily;->getVariant()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string v1, "Unknown"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :pswitch_0
    const-string v1, "Elegant"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :pswitch_1
    const-string v1, "Compact"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v6, 0x0

    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/FontConfig$Font;

    invoke-direct {p0, p1, v7}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpSingleFontConfig(Landroid/util/IndentingPrintWriter;Landroid/text/FontConfig$Font;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    move v1, v5

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v2, "Dump Family Aliases"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p2}, Landroid/text/FontConfig;->getAliases()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    :goto_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/FontConfig$Alias;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "alias = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/text/FontConfig$Alias;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", reference = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/text/FontConfig$Alias;->getOriginal()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/text/FontConfig$Alias;->getWeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_7
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dumpSingleFontConfig(Landroid/util/IndentingPrintWriter;Landroid/text/FontConfig$Font;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "style = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getTtcIndex()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getTtcIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ", axes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getFontFamilyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, ", fallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getFontFamilyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getOriginalFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Font is updated from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getOriginalFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_3
    return-void
.end method

.method private execCommand(Landroid/os/ShellCommand;Ljava/lang/String;)I
    .locals 3

    if-nez p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "update-family"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "restart"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const-string v2, "clear"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "dump"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "update"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :sswitch_5
    const-string/jumbo v2, "status"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x5

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1, p2}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->status(Landroid/os/ShellCommand;)I

    move-result v0

    return v0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->restart(Landroid/os/ShellCommand;)I

    move-result v0

    return v0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->clear(Landroid/os/ShellCommand;)I

    move-result v0

    return v0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->updateFamily(Landroid/os/ShellCommand;)I

    move-result v0

    return v0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->update(Landroid/os/ShellCommand;)I

    move-result v0

    return v0

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dump(Landroid/os/ShellCommand;)I

    move-result v0
    :try_end_0
    .catch Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->writeCommandResult(Landroid/os/ShellCommand;Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3532300e -> :sswitch_5
        -0x31ffc737 -> :sswitch_4
        0x2f39f4 -> :sswitch_3
        0x5a5b64d -> :sswitch_2
        0x416a9e0f -> :sswitch_1
        0x43adc8e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseFontFamilyUpdateXml(Ljava/io/InputStream;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontUpdateRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v2, 0x2

    if-eq v3, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, -0x2717

    if-ne v5, v4, :cond_2

    const-string v2, "fontFamilyUpdateRequest"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected <fontFamilyUpdateRequest> but got: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v7, v4}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_2
    if-ne v5, v2, :cond_4

    const-string v2, "family"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Landroid/graphics/fonts/FontUpdateRequest;

    invoke-static {v0}, Landroid/graphics/fonts/FontUpdateRequest$Family;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/fonts/FontUpdateRequest$Family;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/graphics/fonts/FontUpdateRequest;-><init>(Landroid/graphics/fonts/FontUpdateRequest$Family;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected <family> but got: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v7, v4}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    goto :goto_0

    :cond_5
    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 v2, 0x0

    const-string v3, "Failed to parse xml"

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private restart(Landroid/os/ShellCommand;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    invoke-virtual {v0}, Lcom/android/server/graphics/fonts/FontManagerService;->restart()V

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private status(Landroid/os/ShellCommand;)I
    .locals 7

    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "  "

    invoke-direct {v0, v1, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    invoke-virtual {v1}, Lcom/android/server/graphics/fonts/FontManagerService;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current Version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/text/FontConfig;->getConfigVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/FontConfig;->getLastModifiedTimeMillis()J

    move-result-wide v2

    sget-object v4, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last Modified Date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/time/format/DateTimeFormatter;->ISO_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v2, v4}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    invoke-virtual {v3}, Lcom/android/server/graphics/fonts/FontManagerService;->getFontFileMap()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Number of updated font files: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return v5
.end method

.method private update(Landroid/os/ShellCommand;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
        }
    .end annotation

    const-string/jumbo v0, "r"

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x2713

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v1, v0}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1, v3, v0}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v4, :cond_5

    if-eqz v0, :cond_4

    const/16 v5, -0x2714

    :try_start_2
    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v7

    const/16 v8, 0x2000

    if-gt v7, v8, :cond_3

    new-array v8, v7, [B

    invoke-virtual {v6, v8, v2, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v9, v7, :cond_2

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    nop

    :try_start_5
    iget-object v5, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    const/4 v6, -0x1

    new-instance v7, Landroid/graphics/fonts/FontUpdateRequest;

    invoke-direct {v7, v4, v8}, Landroid/graphics/fonts/FontUpdateRequest;-><init>(Landroid/os/ParcelFileDescriptor;[B)V

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/graphics/fonts/FontManagerService;->update(ILjava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_0

    :try_start_6
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_0
    if-eqz v4, :cond_1

    :try_start_7
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_1
    goto :goto_3

    :cond_2
    :try_start_8
    new-instance v9, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v10, "Invalid read length"

    invoke-direct {v9, v5, v10}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v9

    :cond_3
    new-instance v8, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/16 v9, -0x2715

    const-string v10, "Signature file is too large"

    invoke-direct {v8, v9, v10}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v7

    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v8

    :try_start_a
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v7
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catch_0
    move-exception v6

    :try_start_b
    new-instance v7, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v8, "Failed to read signature file."

    invoke-direct {v7, v5, v8, v6}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_4
    new-instance v5, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/16 v6, -0x2712

    const-string v7, "Failed to open signature file"

    invoke-direct {v5, v6, v7}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v5

    :cond_5
    new-instance v5, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/16 v6, -0x2711

    const-string v7, "Failed to open font file"

    invoke-direct {v5, v6, v7}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v5

    if-eqz v0, :cond_6

    :try_start_c
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v6

    :try_start_d
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception v0

    if-eqz v4, :cond_7

    :try_start_e
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v5

    :try_start_f
    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1

    :catch_1
    move-exception v0

    const-string v4, "FontManagerShellCommand"

    const-string v5, "Error while closing files"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v4, "Success"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_8
    new-instance v0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v4, "Signature file argument is required."

    invoke-direct {v0, v2, v4}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v3, "Font file path argument is required."

    invoke-direct {v0, v2, v3}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private updateFamily(Landroid/os/ShellCommand;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    const-string/jumbo v1, "r"

    invoke-virtual {p1, v0, v1}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v2}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->parseFontFamilyUpdateXml(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    nop

    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/server/graphics/fonts/FontManagerService;->update(ILjava/util/List;)V

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v3, "Success"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/16 v3, -0x2716

    const-string v4, "Failed to open XML file."

    invoke-direct {v2, v3, v4, v1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    new-instance v1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/16 v2, -0x2713

    const-string v3, "XML file path argument is required."

    invoke-direct {v1, v2, v3}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private writeCommandResult(Landroid/os/ShellCommand;Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getAllArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FontManagerShellCommand"

    invoke-static {v2, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method dumpAll(Landroid/util/IndentingPrintWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    invoke-virtual {v0}, Lcom/android/server/graphics/fonts/FontManagerService;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpFontConfig(Landroid/util/IndentingPrintWriter;Landroid/text/FontConfig;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Only shell or root user can execute font command."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-direct {p0, p0, p1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->execCommand(Landroid/os/ShellCommand;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public onHelp()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Font service (font) commands"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const-string v1, "dump [family name]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Dump all font files in the specified family name."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Dump current system font configuration if no family name was specified."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v1, "update [font file path] [signature file path]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Update installed font files with new font file."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v1, "update-family [family definition XML path]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Update font families with the new definitions."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const-string v1, "clear"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Remove all installed font files and reset to the initial state."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v1, "restart"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Restart FontManagerService emulating device reboot."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    WARNING: this is not a safe operation. Other processes may misbehave if"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    they are using fonts updated by FontManagerService."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    This command exists merely for testing."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Prints status of current system font configuration."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
