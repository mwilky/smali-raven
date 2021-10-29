.class public final Lcom/google/android/systemui/assist/uihints/AssistantWarmer;
.super Ljava/lang/Object;
.source "AssistantWarmer.kt"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingListener;


# instance fields
.field private final context:Landroid/content/Context;

.field private primed:Z

.field private request:Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/AssistantWarmer;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onInvocationProgress(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    iput-boolean v2, p0, Lcom/google/android/systemui/assist/uihints/AssistantWarmer;->primed:Z

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/AssistantWarmer;->primed:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/google/android/systemui/assist/uihints/AssistantWarmer;->primed:Z

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/AssistantWarmer;->request:Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingRequest;

    if-nez v0, :cond_2

    const v0, 0x3dcccccd    # 0.1f

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingRequest;->getThreshold()F

    move-result v0

    :goto_0
    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    iget-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/AssistantWarmer;->primed:Z

    if-nez p1, :cond_3

    iput-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/AssistantWarmer;->primed:Z

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/AssistantWarmer;->request:Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingRequest;

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/AssistantWarmer;->context:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/google/android/systemui/assist/uihints/AssistantWarmer;->primed:Z

    invoke-virtual {p1, v0, p0}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingRequest;->notify(Landroid/content/Context;Z)V

    :cond_5
    :goto_3
    return-void
.end method

.method public onWarmingRequest(Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingRequest;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/AssistantWarmer;->request:Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingRequest;

    return-void
.end method
