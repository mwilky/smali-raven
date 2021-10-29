.class public final Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent$Companion;
.super Ljava/lang/Object;
.source "AssistantModeChangeEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEventFromMode(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)Lcom/android/internal/logging/UiEventLogger$UiEventEnum;
    .locals 0

    const-string p0, "mode"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/Gone;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->ASSISTANT_SESSION_MODE_GONE:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->ASSISTANT_SESSION_MODE_FULL_LISTENING:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    goto :goto_0

    :cond_1
    instance-of p0, p1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->ASSISTANT_SESSION_MODE_FULFILL_BOTTOM:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    goto :goto_0

    :cond_2
    instance-of p0, p1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;

    if-eqz p0, :cond_3

    sget-object p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->ASSISTANT_SESSION_MODE_FULFILL_PERIMETER:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->ASSISTANT_SESSION_MODE_UNKNOWN:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    :goto_0
    return-object p0
.end method
