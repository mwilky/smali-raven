.class public final Lcom/android/systemui/util/DumpUtilsKt;
.super Ljava/lang/Object;
.source "DumpUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDumpUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DumpUtils.kt\ncom/android/systemui/util/DumpUtilsKt\n*L\n1#1,76:1\n61#1,7:77\n61#1,7:84\n*E\n*S KotlinDebug\n*F\n+ 1 DumpUtils.kt\ncom/android/systemui/util/DumpUtilsKt\n*L\n34#1,7:77\n50#1,7:84\n*E\n"
.end annotation


# direct methods
.method public static final visibilityString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "unknown:"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "gone"

    goto :goto_0

    :cond_1
    const-string p0, "invisible"

    goto :goto_0

    :cond_2
    const-string p0, "visible"

    :goto_0
    return-object p0
.end method

.method public static final withIndenting(Ljava/io/PrintWriter;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/function/Consumer<",
            "Landroid/util/IndentingPrintWriter;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Landroid/util/IndentingPrintWriter;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/util/IndentingPrintWriter;

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    throw p0

    :cond_0
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
