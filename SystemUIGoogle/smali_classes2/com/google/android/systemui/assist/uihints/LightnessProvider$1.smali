.class Lcom/google/android/systemui/assist/uihints/LightnessProvider$1;
.super Landroid/view/CompositionSamplingListener;
.source "LightnessProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/assist/uihints/LightnessProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/assist/uihints/LightnessProvider;


# direct methods
.method public static synthetic $r8$lambda$pmjJn3JmhD_L7Qtf8OAS6bdYCxE(Lcom/google/android/systemui/assist/uihints/LightnessProvider$1;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/LightnessProvider$1;->lambda$onSampleCollected$0(F)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/systemui/assist/uihints/LightnessProvider;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider$1;->this$0:Lcom/google/android/systemui/assist/uihints/LightnessProvider;

    invoke-direct {p0, p2}, Landroid/view/CompositionSamplingListener;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic lambda$onSampleCollected$0(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider$1;->this$0:Lcom/google/android/systemui/assist/uihints/LightnessProvider;

    invoke-static {v0}, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->access$100(Lcom/google/android/systemui/assist/uihints/LightnessProvider;)Lcom/google/android/systemui/assist/uihints/LightnessListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider$1;->this$0:Lcom/google/android/systemui/assist/uihints/LightnessProvider;

    invoke-static {v0}, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->access$200(Lcom/google/android/systemui/assist/uihints/LightnessProvider;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider$1;->this$0:Lcom/google/android/systemui/assist/uihints/LightnessProvider;

    invoke-static {v0}, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->access$300(Lcom/google/android/systemui/assist/uihints/LightnessProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider$1;->this$0:Lcom/google/android/systemui/assist/uihints/LightnessProvider;

    invoke-static {v0}, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->access$400(Lcom/google/android/systemui/assist/uihints/LightnessProvider;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider$1;->this$0:Lcom/google/android/systemui/assist/uihints/LightnessProvider;

    invoke-static {p0}, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->access$100(Lcom/google/android/systemui/assist/uihints/LightnessProvider;)Lcom/google/android/systemui/assist/uihints/LightnessListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/systemui/assist/uihints/LightnessListener;->onLightnessUpdate(F)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onSampleCollected(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider$1;->this$0:Lcom/google/android/systemui/assist/uihints/LightnessProvider;

    invoke-static {v0}, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->access$000(Lcom/google/android/systemui/assist/uihints/LightnessProvider;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/systemui/assist/uihints/LightnessProvider$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/assist/uihints/LightnessProvider$1$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/LightnessProvider$1;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
