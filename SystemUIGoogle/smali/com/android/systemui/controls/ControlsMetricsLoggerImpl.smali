.class public final Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;
.super Ljava/lang/Object;
.source "ControlsMetricsLoggerImpl.kt"

# interfaces
.implements Lcom/android/systemui/controls/ControlsMetricsLogger;


# instance fields
.field public instanceId:I

.field public final instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;


# direct methods
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
.method public final assignInstanceId()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->instanceId:I

    return-void
.end method

.method public final drag(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V
    .locals 2

    sget-object v0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->CONTROL_DRAG:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    move-result v1

    iget p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->uid:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->log(IIIZ)V

    return-void
.end method

.method public final log(IIIZ)V
    .locals 2

    iget p0, p0, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->instanceId:I

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    const/16 v1, 0x15d

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    const/4 p0, 0x1

    invoke-virtual {v0, p0, p0}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public final longPress(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V
    .locals 2

    sget-object v0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->CONTROL_LONG_PRESS:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    move-result v1

    iget p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->uid:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->log(IIIZ)V

    return-void
.end method

.method public final refreshBegin(IZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->assignInstanceId()V

    sget-object v0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->CONTROL_REFRESH_BEGIN:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->getId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->log(IIIZ)V

    return-void
.end method

.method public final refreshEnd(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V
    .locals 2

    sget-object v0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->CONTROL_REFRESH_END:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    move-result v1

    iget p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->uid:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->log(IIIZ)V

    return-void
.end method

.method public final touch(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V
    .locals 2

    sget-object v0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->CONTROL_TOUCH:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    move-result v1

    iget p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->uid:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->log(IIIZ)V

    return-void
.end method
