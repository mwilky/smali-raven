.class public Landroid/net/util/SharedLog;
.super Ljava/lang/Object;
.source "SharedLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/util/SharedLog$LocalLog;,
        Landroid/net/util/SharedLog$Category;
    }
.end annotation


# static fields
.field private static final COMPONENT_DELIMITER:Ljava/lang/String; = "."

.field private static final DEFAULT_MAX_RECORDS:I = 0x1f4


# instance fields
.field private final mComponent:Ljava/lang/String;

.field private final mLocalLog:Landroid/net/util/SharedLog$LocalLog;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/net/util/SharedLog$LocalLog;

    invoke-direct {v0, p1}, Landroid/net/util/SharedLog$LocalLog;-><init>(I)V

    invoke-direct {p0, v0, p2, p2}, Landroid/net/util/SharedLog;-><init>(Landroid/net/util/SharedLog$LocalLog;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/net/util/SharedLog$LocalLog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/util/SharedLog;->mLocalLog:Landroid/net/util/SharedLog$LocalLog;

    iput-object p2, p0, Landroid/net/util/SharedLog;->mTag:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/util/SharedLog;->mComponent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x1f4

    invoke-direct {p0, v0, p1}, Landroid/net/util/SharedLog;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method private isRootLogInstance()Z
    .locals 1

    iget-object v0, p0, Landroid/net/util/SharedLog;->mComponent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/net/util/SharedLog;->mComponent:Ljava/lang/String;

    iget-object p0, p0, Landroid/net/util/SharedLog;->mTag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private logLine(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/net/util/SharedLog;->isRootLogInstance()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/util/SharedLog;->mComponent:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_0
    sget-object p0, Landroid/net/util/SharedLog$Category;->NONE:Landroid/net/util/SharedLog$Category;

    if-eq p1, p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private record(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/util/SharedLog;->logLine(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Landroid/net/util/SharedLog;->mLocalLog:Landroid/net/util/SharedLog$LocalLog;

    invoke-virtual {p0, p1}, Landroid/net/util/SharedLog$LocalLog;->append(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroid/net/util/SharedLog;->mLocalLog:Landroid/net/util/SharedLog$LocalLog;

    invoke-virtual {p0, p2}, Landroid/net/util/SharedLog$LocalLog;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public e(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Landroid/net/util/SharedLog;->mTag:Ljava/lang/String;

    sget-object v1, Landroid/net/util/SharedLog$Category;->ERROR:Landroid/net/util/SharedLog$Category;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Landroid/net/util/SharedLog;->record(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/net/util/SharedLog;->mTag:Ljava/lang/String;

    sget-object v1, Landroid/net/util/SharedLog$Category;->ERROR:Landroid/net/util/SharedLog$Category;

    invoke-direct {p0, v1, p1}, Landroid/net/util/SharedLog;->record(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/net/util/SharedLog;->mTag:Ljava/lang/String;

    sget-object v1, Landroid/net/util/SharedLog$Category;->ERROR:Landroid/net/util/SharedLog$Category;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Landroid/net/util/SharedLog;->record(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;
    .locals 2

    invoke-direct {p0}, Landroid/net/util/SharedLog;->isRootLogInstance()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/util/SharedLog;->mComponent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Landroid/net/util/SharedLog;

    iget-object v1, p0, Landroid/net/util/SharedLog;->mLocalLog:Landroid/net/util/SharedLog$LocalLog;

    iget-object p0, p0, Landroid/net/util/SharedLog;->mTag:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p1}, Landroid/net/util/SharedLog;-><init>(Landroid/net/util/SharedLog$LocalLog;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/net/util/SharedLog;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/net/util/SharedLog;->mTag:Ljava/lang/String;

    sget-object v1, Landroid/net/util/SharedLog$Category;->NONE:Landroid/net/util/SharedLog$Category;

    invoke-direct {p0, v1, p1}, Landroid/net/util/SharedLog;->record(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Landroid/net/util/SharedLog$Category;->NONE:Landroid/net/util/SharedLog$Category;

    invoke-direct {p0, v0, p1}, Landroid/net/util/SharedLog;->record(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public varargs logf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public mark(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Landroid/net/util/SharedLog$Category;->MARK:Landroid/net/util/SharedLog$Category;

    invoke-direct {p0, v0, p1}, Landroid/net/util/SharedLog;->record(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public reverseDump(Ljava/io/PrintWriter;)V
    .locals 0

    iget-object p0, p0, Landroid/net/util/SharedLog;->mLocalLog:Landroid/net/util/SharedLog$LocalLog;

    invoke-virtual {p0, p1}, Landroid/net/util/SharedLog$LocalLog;->reverseDump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/net/util/SharedLog;->mTag:Ljava/lang/String;

    sget-object v1, Landroid/net/util/SharedLog$Category;->WARN:Landroid/net/util/SharedLog$Category;

    invoke-direct {p0, v1, p1}, Landroid/net/util/SharedLog;->record(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
