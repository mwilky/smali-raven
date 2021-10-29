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
.field private final mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

.field private final mContext:Landroid/content/Context;

.field private final mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

.field private mThrottler:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController$ModeChangeThrottler;


# direct methods
.method public static synthetic $r8$lambda$Rb5chWpAPcWGn5bRbi0CA-0uZV0(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->lambda$onEdgeLightsInfo$0(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/assist/AssistLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

    sget p1, Lcom/android/systemui/R$id;->edge_lights:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    return-void
.end method

.method private synthetic lambda$onEdgeLightsInfo$0(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->getMode()Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    invoke-interface {v0, v1, p1}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;->onNewModeRequest(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

    sget-object v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->Companion:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent$Companion;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent$Companion;->getEventFromMode(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistLogger;->reportAssistantSessionEvent(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    invoke-interface {p1}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;->logState()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsListener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->addListener(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsListener;)V

    return-void
.end method

.method public getMode()Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->getMode()Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    move-result-object p0

    return-object p0
.end method

.method public onAudioInfo(FF)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->onAudioLevelUpdate(FF)V

    return-void
.end method

.method public onEdgeLightsInfo(Ljava/lang/String;Z)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "FULL_LISTENING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "FULFILL_PERIMETER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "HALF_LISTENING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "GONE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_0

    :sswitch_4
    const-string v0, "FULFILL_BOTTOM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_0
    const-string v0, "EdgeLightsController"

    packed-switch v3, :pswitch_data_0

    const/4 p2, 0x0

    goto :goto_1

    :pswitch_0
    new-instance p2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1, v2}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;-><init>(Landroid/content/Context;Z)V

    goto :goto_1

    :pswitch_1
    new-instance p2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_2
    const-string p2, "Rendering full instead of half listening for now."

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2, v1}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;-><init>(Landroid/content/Context;Z)V

    goto :goto_1

    :pswitch_3
    new-instance p2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/Gone;

    invoke-direct {p2}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/Gone;-><init>()V

    goto :goto_1

    :pswitch_4
    new-instance v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;-><init>(Landroid/content/Context;Z)V

    move-object p2, v1

    :goto_1
    if-nez p2, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid edge lights mode: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    new-instance v0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mThrottler:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController$ModeChangeThrottler;

    if-nez p0, :cond_6

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_6
    invoke-interface {p0, p1, v0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController$ModeChangeThrottler;->runWhenReady(Ljava/lang/String;Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x71e7a916 -> :sswitch_4
        0x21789f -> :sswitch_3
        0x19a03f8f -> :sswitch_2
        0x52ac46de -> :sswitch_1
        0x757d5eeb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFullListening()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->getMode()Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    new-instance v2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;-><init>(Landroid/content/Context;Z)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;->onNewModeRequest(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V

    return-void
.end method

.method public setGone()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->getMode()Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/Gone;

    invoke-direct {v1}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/Gone;-><init>()V

    invoke-interface {v0, p0, v1}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;->onNewModeRequest(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V

    return-void
.end method

.method public setModeChangeThrottler(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController$ModeChangeThrottler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mThrottler:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController$ModeChangeThrottler;

    return-void
.end method
