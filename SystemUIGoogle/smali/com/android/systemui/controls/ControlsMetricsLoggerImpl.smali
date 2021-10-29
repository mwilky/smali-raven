.class public final Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;
.super Ljava/lang/Object;
.source "ControlsMetricsLoggerImpl.kt"

# interfaces
.implements Lcom/android/systemui/controls/ControlsMetricsLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ControlsMetricsLoggerImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/ControlsMetricsLoggerImpl$Companion;


# instance fields
.field private instanceId:I

.field private final instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->Companion:Lcom/android/systemui/controls/ControlsMetricsLoggerImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/logging/InstanceIdSequence;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    return-void
.end method


# virtual methods
.method public assignInstanceId()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->instanceId:I

    return-void
.end method

.method public drag(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/controls/ControlsMetricsLogger$DefaultImpls;->drag(Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V

    return-void
.end method

.method public log(IIIZ)V
    .locals 6

    iget v2, p0, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->instanceId:I

    const/16 v0, 0x15d

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(IIIIIZ)V

    return-void
.end method

.method public longPress(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/controls/ControlsMetricsLogger$DefaultImpls;->longPress(Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V

    return-void
.end method

.method public refreshBegin(IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/controls/ControlsMetricsLogger$DefaultImpls;->refreshBegin(Lcom/android/systemui/controls/ControlsMetricsLogger;IZ)V

    return-void
.end method

.method public refreshEnd(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/controls/ControlsMetricsLogger$DefaultImpls;->refreshEnd(Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V

    return-void
.end method

.method public touch(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/controls/ControlsMetricsLogger$DefaultImpls;->touch(Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V

    return-void
.end method
