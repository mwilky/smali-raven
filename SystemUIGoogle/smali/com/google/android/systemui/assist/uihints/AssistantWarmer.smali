.class public final Lcom/google/android/systemui/assist/uihints/AssistantWarmer;
.super Ljava/lang/Object;
.source "AssistantWarmer.kt"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingListener;


# instance fields
.field public final context:Landroid/content/Context;

.field public primed:Z

.field public request:Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/AssistantWarmer;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onWarmingRequest(Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/AssistantWarmer;->request:Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingRequest;

    return-void
.end method
