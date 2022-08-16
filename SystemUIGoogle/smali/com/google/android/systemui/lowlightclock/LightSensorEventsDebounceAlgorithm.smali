.class public final Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;
.super Ljava/lang/Object;
.source "LightSensorEventsDebounceAlgorithm.kt"

# interfaces
.implements Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$DebounceAlgorithm;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLightSensorEventsDebounceAlgorithm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LightSensorEventsDebounceAlgorithm.kt\ncom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,300:1\n1849#2,2:301\n1849#2,2:303\n*S KotlinDebug\n*F\n+ 1 LightSensorEventsDebounceAlgorithm.kt\ncom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm\n*L\n168#1:301,2\n169#1:303,2\n*E\n"
.end annotation


# static fields
.field public static final DEBUG:Z


# instance fields
.field public bundleAverageDarkMode:D

.field public bundleAverageLightMode:D

.field public bundleDarkMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public bundleLightMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final bundlesQueueDarkMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public final bundlesQueueLightMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public callback:Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$Callback;

.field public final darkModeThreshold:I

.field public final darkSamplingFrequencyMillis:I

.field public final darkSamplingSpanMillis:I

.field public final dequeueDarkModeBundle:Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$dequeueDarkModeBundle$1;

.field public final dequeueLightModeBundle:Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$dequeueLightModeBundle$1;

.field public final enqueueDarkModeBundle:Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$enqueueDarkModeBundle$1;

.field public final enqueueLightModeBundle:Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$enqueueLightModeBundle$1;

.field public final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public isDarkMode:Z

.field public isLightMode:Z

.field public final lightModeThreshold:I

.field public final lightSamplingFrequencyMillis:I

.field public final lightSamplingSpanMillis:I

.field public mode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "LightDebounceAlgorithm"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    const p1, 0x7f0c0017

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->lightModeThreshold:I

    const p1, 0x7f0c0014

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->darkModeThreshold:I

    const p1, 0x7f0c0016

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->lightSamplingSpanMillis:I

    const p1, 0x7f0c0013

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->darkSamplingSpanMillis:I

    const p1, 0x7f0c0015

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->lightSamplingFrequencyMillis:I

    const p1, 0x7f0c0012

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->darkSamplingFrequencyMillis:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->bundlesQueueLightMode:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->bundlesQueueDarkMode:Ljava/util/ArrayList;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->mode:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->bundleLightMode:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->bundleDarkMode:Ljava/util/ArrayList;

    new-instance p1, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$enqueueLightModeBundle$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$enqueueLightModeBundle$1;-><init>(Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;)V

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->enqueueLightModeBundle:Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$enqueueLightModeBundle$1;

    new-instance p1, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$enqueueDarkModeBundle$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$enqueueDarkModeBundle$1;-><init>(Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;)V

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->enqueueDarkModeBundle:Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$enqueueDarkModeBundle$1;

    new-instance p1, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$dequeueLightModeBundle$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$dequeueLightModeBundle$1;-><init>(Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;)V

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->dequeueLightModeBundle:Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$dequeueLightModeBundle$1;

    new-instance p1, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$dequeueDarkModeBundle$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$dequeueDarkModeBundle$1;-><init>(Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;)V

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->dequeueDarkModeBundle:Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$dequeueDarkModeBundle$1;

    return-void
.end method


# virtual methods
.method public final onUpdateLightSensorEvent(F)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->callback:Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$Callback;

    if-nez v0, :cond_1

    sget-boolean p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "LightDebounceAlgorithm"

    const-string p1, "ignore light sensor event because algorithm not started"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->bundlesQueueLightMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->bundlesQueueDarkMode:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final setMode(I)V
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->mode:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->mode:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const-string v0, "AMBIENT_LIGHT_MODE_UNDECIDED"

    goto :goto_0

    :cond_1
    const-string v0, "AMBIENT_LIGHT_MODE_DARK"

    goto :goto_0

    :cond_2
    const-string v0, "AMBIENT_LIGHT_MODE_LIGHT"

    :goto_0
    const-string v1, "Light mode changed: mode="

    const-string v2, ", bundleAverageLightMode="

    invoke-static {v1, v0, v2}, Landroidx/activity/result/ActivityResultRegistry$3$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->bundleAverageLightMode:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", lightModeThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->lightModeThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bundlesQueueLightMode.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->bundlesQueueLightMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bundleAverageDarkMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->bundleAverageDarkMode:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", darkModeThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->darkModeThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bundlesQueueDarkMode.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->bundlesQueueDarkMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightDebounceAlgorithm"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->callback:Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$Callback;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p0, p1}, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$Callback;->onChange(I)V

    :goto_1
    return-void
.end method

.method public final start(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda20;)V
    .locals 3

    sget-boolean v0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->DEBUG:Z

    const-string v1, "LightDebounceAlgorithm"

    if-eqz v0, :cond_0

    const-string/jumbo v2, "start algorithm"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->callback:Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$Callback;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    const-string p0, "already started"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->callback:Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$Callback;

    iget-object p1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->enqueueLightModeBundle:Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$enqueueLightModeBundle$1;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->enqueueDarkModeBundle:Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$enqueueDarkModeBundle$1;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final stop()V
    .locals 3

    sget-boolean v0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->DEBUG:Z

    const-string v1, "LightDebounceAlgorithm"

    if-eqz v0, :cond_0

    const-string/jumbo v2, "stop algorithm"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->callback:Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$Callback;

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    const-string p0, "haven\'t started"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->callback:Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$Callback;

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->bundlesQueueLightMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->bundlesQueueDarkMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->setMode(I)V

    return-void
.end method
