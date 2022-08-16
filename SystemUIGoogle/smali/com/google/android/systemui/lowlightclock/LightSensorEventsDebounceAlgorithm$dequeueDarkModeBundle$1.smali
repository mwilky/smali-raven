.class public final Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$dequeueDarkModeBundle$1;
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

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$dequeueDarkModeBundle$1;->this$0:Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$dequeueDarkModeBundle$1;->this$0:Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;

    iget-object v0, v0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->bundlesQueueDarkMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$dequeueDarkModeBundle$1;->this$0:Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;

    iget-object v1, v0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->bundlesQueueDarkMode:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->bundleDarkMode:Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->averageOfFloat(Ljava/util/ArrayList;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    const-string v5, "LightDebounceAlgorithm"

    if-nez v1, :cond_7

    iput-wide v3, v0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->bundleAverageDarkMode:D

    sget-boolean v1, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-string v7, "dark mode average: "

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v6, v0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->darkModeThreshold:I

    int-to-double v6, v6

    cmpg-double v3, v3, v6

    const/4 v4, 0x1

    if-gez v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    iget-boolean v6, v0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->isDarkMode:Z

    if-ne v6, v3, :cond_3

    goto :goto_2

    :cond_3
    iput-boolean v3, v0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->isDarkMode:Z

    if-eqz v1, :cond_4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v6, "isDarkMode: "

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v3, :cond_5

    move v2, v4

    goto :goto_1

    :cond_5
    iget-boolean v1, v0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->isLightMode:Z

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x2

    :goto_1
    invoke-virtual {v0, v2}, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->setMode(I)V

    :cond_7
    :goto_2
    sget-boolean v0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->DEBUG:Z

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm$dequeueDarkModeBundle$1;->this$0:Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;->bundleDarkMode:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "dequeued a dark mode bundle of size "

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method
