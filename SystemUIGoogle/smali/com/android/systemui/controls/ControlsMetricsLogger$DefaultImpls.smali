.class public final Lcom/android/systemui/controls/ControlsMetricsLogger$DefaultImpls;
.super Ljava/lang/Object;
.source "ControlsMetricsLogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ControlsMetricsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static drag(Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V
    .locals 2

    const-string/jumbo v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cvh"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->CONTROL_DRAG:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getUid()I

    move-result p1

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/android/systemui/controls/ControlsMetricsLogger;->log(IIIZ)V

    return-void
.end method

.method public static longPress(Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V
    .locals 2

    const-string/jumbo v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cvh"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->CONTROL_LONG_PRESS:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getUid()I

    move-result p1

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/android/systemui/controls/ControlsMetricsLogger;->log(IIIZ)V

    return-void
.end method

.method public static refreshBegin(Lcom/android/systemui/controls/ControlsMetricsLogger;IZ)V
    .locals 2

    const-string/jumbo v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/android/systemui/controls/ControlsMetricsLogger;->assignInstanceId()V

    sget-object v0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->CONTROL_REFRESH_BEGIN:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->getId()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/android/systemui/controls/ControlsMetricsLogger;->log(IIIZ)V

    return-void
.end method

.method public static refreshEnd(Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V
    .locals 2

    const-string/jumbo v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cvh"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->CONTROL_REFRESH_END:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getUid()I

    move-result p1

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/android/systemui/controls/ControlsMetricsLogger;->log(IIIZ)V

    return-void
.end method

.method public static touch(Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V
    .locals 2

    const-string/jumbo v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cvh"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->CONTROL_TOUCH:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getUid()I

    move-result p1

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/android/systemui/controls/ControlsMetricsLogger;->log(IIIZ)V

    return-void
.end method
