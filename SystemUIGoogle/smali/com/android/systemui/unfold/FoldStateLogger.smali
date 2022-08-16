.class public final Lcom/android/systemui/unfold/FoldStateLogger;
.super Ljava/lang/Object;
.source "FoldStateLogger.kt"

# interfaces
.implements Lcom/android/systemui/unfold/FoldStateLoggingProvider$FoldStateLoggingListener;


# instance fields
.field public final foldStateLoggingProvider:Lcom/android/systemui/unfold/FoldStateLoggingProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/FoldStateLoggingProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/unfold/FoldStateLogger;->foldStateLoggingProvider:Lcom/android/systemui/unfold/FoldStateLoggingProvider;

    return-void
.end method


# virtual methods
.method public final onFoldUpdate(Lcom/android/systemui/unfold/FoldStateChange;)V
    .locals 3

    iget p0, p1, Lcom/android/systemui/unfold/FoldStateChange;->previous:I

    iget v0, p1, Lcom/android/systemui/unfold/FoldStateChange;->current:I

    iget-wide v1, p1, Lcom/android/systemui/unfold/FoldStateChange;->dtMillis:J

    const/16 p1, 0x19e

    invoke-static {p1, p0, v0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJ)V

    return-void
.end method
