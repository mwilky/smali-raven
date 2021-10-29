.class public interface abstract Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;
.super Ljava/lang/Object;
.source "EdgeLightsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Mode"
.end annotation


# virtual methods
.method public abstract getSubType()I
.end method

.method public logState()V
    .locals 2

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x6b4

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;->getSubType()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public onAudioLevelUpdate(FF)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    return-void
.end method

.method public abstract onNewModeRequest(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V
.end method

.method public preventsInvocations()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract start(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/android/systemui/assist/ui/PerimeterPathGuide;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V
.end method
