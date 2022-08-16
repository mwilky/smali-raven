.class public final Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$enqueueDarkModeBundle$1;
.super Ljava/lang/Object;
.source "LightSensorEventsDebounceAlgorithm.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;-><init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$enqueueDarkModeBundle$1;->this$0:Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    sget-boolean v0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LightDebounceAlgorithm"

    const-string v1, "enqueueing a dark mode bundle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$enqueueDarkModeBundle$1;->this$0:Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;

    iget-object v0, v0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->bundlesQueueDarkMode:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$enqueueDarkModeBundle$1;->this$0:Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;

    iget-object v1, v0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v2, v0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->dequeueDarkModeBundle:Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$dequeueDarkModeBundle$1;

    iget v0, v0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->darkSamplingSpanMillis:I

    int-to-long v3, v0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$enqueueDarkModeBundle$1;->this$0:Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;

    iget-object v1, v0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget v0, v0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->darkSamplingFrequencyMillis:I

    int-to-long v2, v0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    return-void
.end method
