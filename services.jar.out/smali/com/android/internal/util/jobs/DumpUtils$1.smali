.class public Lcom/android/internal/util/jobs/DumpUtils$1;
.super Ljava/lang/Object;
.source "DumpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/jobs/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/jobs/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$dump:Lcom/android/internal/util/jobs/DumpUtils$Dump;

.field public final synthetic val$prefix:Ljava/lang/String;

.field public final synthetic val$sw:Ljava/io/StringWriter;


# direct methods
.method public constructor <init>(Ljava/io/StringWriter;Lcom/android/internal/util/jobs/DumpUtils$Dump;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/util/jobs/DumpUtils$1;->val$sw:Ljava/io/StringWriter;

    iput-object p2, p0, Lcom/android/internal/util/jobs/DumpUtils$1;->val$dump:Lcom/android/internal/util/jobs/DumpUtils$Dump;

    iput-object p3, p0, Lcom/android/internal/util/jobs/DumpUtils$1;->val$prefix:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/android/internal/util/jobs/FastPrintWriter;

    iget-object v1, p0, Lcom/android/internal/util/jobs/DumpUtils$1;->val$sw:Ljava/io/StringWriter;

    invoke-direct {v0, v1}, Lcom/android/internal/util/jobs/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v1, p0, Lcom/android/internal/util/jobs/DumpUtils$1;->val$dump:Lcom/android/internal/util/jobs/DumpUtils$Dump;

    iget-object p0, p0, Lcom/android/internal/util/jobs/DumpUtils$1;->val$prefix:Ljava/lang/String;

    invoke-interface {v1, v0, p0}, Lcom/android/internal/util/jobs/DumpUtils$Dump;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return-void
.end method
