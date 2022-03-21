.class public final Lcom/android/systemui/statusbar/DisableFlagsLogger;
.super Ljava/lang/Object;
.source "DisableFlagsLogger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableFlag;,
        Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDisableFlagsLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisableFlagsLogger.kt\ncom/android/systemui/statusbar/DisableFlagsLogger\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,216:1\n1517#2:217\n1588#2,3:218\n1517#2:221\n1588#2,3:222\n1819#2,2:225\n1819#2,2:227\n1819#2,2:229\n1819#2,2:231\n*E\n*S KotlinDebug\n*F\n+ 1 DisableFlagsLogger.kt\ncom/android/systemui/statusbar/DisableFlagsLogger\n*L\n65#1:217\n65#1,3:218\n67#1:221\n67#1,3:222\n147#1,2:225\n154#1,2:227\n167#1,2:229\n169#1,2:231\n*E\n"
.end annotation


# instance fields
.field private final disable1FlagsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final disable2FlagsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableFlag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/statusbar/DisableFlagsLoggerKt;->access$getDefaultDisable1FlagsList$p()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/statusbar/DisableFlagsLoggerKt;->access$getDefaultDisable2FlagsList$p()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/DisableFlagsLogger;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableFlag;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableFlag;",
            ">;)V"
        }
    .end annotation

    const-string v0, "disable1FlagsList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disable2FlagsList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/DisableFlagsLogger;->disable1FlagsList:Ljava/util/List;

    iput-object p2, p0, Lcom/android/systemui/statusbar/DisableFlagsLogger;->disable2FlagsList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/DisableFlagsLogger;->flagsListHasDuplicateSymbols(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/DisableFlagsLogger;->flagsListHasDuplicateSymbols(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "disable2 flags must have unique symbols"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "disable1 flags must have unique symbols"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final flagsListHasDuplicateSymbols(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableFlag;",
            ">;)Z"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableFlag;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableFlag;->getFlagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableFlag;

    const v4, 0x7fffffff

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableFlag;->getFlagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lt p0, v1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p0

    if-ge v0, p0, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    return v3
.end method

.method private final getDiffString(Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;)Ljava/lang/String;
    .locals 5

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/DisableFlagsLogger;->disable1FlagsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableFlag;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;->getDisable1()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableFlag;->getFlagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)C

    move-result v3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;->getDisable1()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableFlag;->getFlagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)C

    move-result v2

    if-eq v2, v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/DisableFlagsLogger;->disable2FlagsList:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableFlag;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;->getDisable2()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableFlag;->getFlagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)C

    move-result v2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;->getDisable2()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableFlag;->getFlagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)C

    move-result v1

    if-eq v1, v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "builder.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getFlagsString(Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/DisableFlagsLogger;->disable1FlagsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableFlag;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;->getDisable1()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableFlag;->getFlagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/DisableFlagsLogger;->disable2FlagsList:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableFlag;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;->getDisable2()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableFlag;->getFlagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "builder.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getFlagsStringWithDiff(Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/DisableFlagsLogger;->getFlagsString(Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/DisableFlagsLogger;->getDiffString(Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "builder.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final getDisableFlagsString(Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;)Ljava/lang/String;
    .locals 2

    const-string v0, "new"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received new disable state. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Old: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/DisableFlagsLogger;->getFlagsString(Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "New: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/DisableFlagsLogger;->getFlagsStringWithDiff(Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/DisableFlagsLogger;->getFlagsString(Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-eqz p3, :cond_2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, " | New after local modification: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/DisableFlagsLogger;->getFlagsStringWithDiff(Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "builder.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
