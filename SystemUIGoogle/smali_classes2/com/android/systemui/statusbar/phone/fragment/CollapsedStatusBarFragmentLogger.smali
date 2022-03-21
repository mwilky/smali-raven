.class public final Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;
.super Ljava/lang/Object;
.source "CollapsedStatusBarFragmentLogger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollapsedStatusBarFragmentLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollapsedStatusBarFragmentLogger.kt\ncom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger\n+ 2 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,63:1\n120#2,6:64\n*E\n*S KotlinDebug\n*F\n+ 1 CollapsedStatusBarFragmentLogger.kt\ncom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger\n*L\n42#1,6:64\n*E\n"
.end annotation


# instance fields
.field private final buffer:Lcom/android/systemui/log/LogBuffer;

.field private final disableFlagsLogger:Lcom/android/systemui/statusbar/DisableFlagsLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/statusbar/DisableFlagsLogger;)V
    .locals 1

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disableFlagsLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;->disableFlagsLogger:Lcom/android/systemui/statusbar/DisableFlagsLogger;

    return-void
.end method

.method public static final synthetic access$getDisableFlagsLogger$p(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;)Lcom/android/systemui/statusbar/DisableFlagsLogger;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;->disableFlagsLogger:Lcom/android/systemui/statusbar/DisableFlagsLogger;

    return-object p0
.end method


# virtual methods
.method public final logDisableFlagChange(Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;)V
    .locals 3

    const-string v0, "new"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newAfterLocalModification"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v1, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    new-instance v2, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger$logDisableFlagChange$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger$logDisableFlagChange$2;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;)V

    invoke-virtual {v0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "CollapsedSbFragment"

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;->getDisable1()I

    move-result v1

    invoke-interface {p0, v1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;->getDisable2()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;->getDisable1()I

    move-result p1

    int-to-long v1, p1

    invoke-interface {p0, v1, v2}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;->getDisable2()I

    move-result p1

    int-to-long p1, p1

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/log/LogMessage;->setLong2(J)V

    invoke-virtual {v0, p0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method
