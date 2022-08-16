.class public final Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;
.super Ljava/lang/Object;
.source "EdgeLightsController.java"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$AudioInfoListener;
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$EdgeLightsInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController$ModeChangeThrottler;
    }
.end annotation


# instance fields
.field public final mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

.field public final mContext:Landroid/content/Context;

.field public final mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

.field public mThrottler:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController$ModeChangeThrottler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/assist/AssistLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

    const p1, 0x7f0b0245

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    return-void
.end method


# virtual methods
.method public final onAudioInfo(FF)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    invoke-interface {p0, p2}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;->onAudioLevelUpdate(F)V

    return-void
.end method

.method public final onEdgeLightsInfo(Ljava/lang/String;Z)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "FULL_LISTENING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "FULFILL_PERIMETER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "HALF_LISTENING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "GONE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_1

    :sswitch_4
    const-string v0, "FULFILL_BOTTOM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v5

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v6, "EdgeLightsController"

    if-eqz v0, :cond_9

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_7

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_5

    const/4 p2, 0x0

    goto :goto_2

    :cond_5
    new-instance p2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, v5}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;-><init>(Landroid/content/Context;Z)V

    goto :goto_2

    :cond_6
    new-instance p2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_7
    const-string p2, "Rendering full instead of half listening for now."

    invoke-static {v6, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, v4}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;-><init>(Landroid/content/Context;Z)V

    goto :goto_2

    :cond_8
    new-instance p2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/Gone;

    invoke-direct {p2}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/Gone;-><init>()V

    goto :goto_2

    :cond_9
    new-instance v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;-><init>(Landroid/content/Context;Z)V

    move-object p2, v0

    :goto_2
    if-nez p2, :cond_a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid edge lights mode: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    new-instance v0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda4;

    invoke-direct {v0, v4, p0, p2}, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mThrottler:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController$ModeChangeThrottler;

    if-nez p0, :cond_b

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda4;->run()V

    goto :goto_3

    :cond_b
    check-cast p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda2;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda2;->runWhenReady(Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda4;Ljava/lang/String;)V

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x71e7a916 -> :sswitch_4
        0x21789f -> :sswitch_3
        0x19a03f8f -> :sswitch_2
        0x52ac46de -> :sswitch_1
        0x757d5eeb -> :sswitch_0
    .end sparse-switch
.end method
