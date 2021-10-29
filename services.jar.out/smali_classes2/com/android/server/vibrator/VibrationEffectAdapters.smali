.class public final Lcom/android/server/vibrator/VibrationEffectAdapters;
.super Ljava/lang/Object;
.source "VibrationEffectAdapters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/VibrationEffectAdapters$EffectAdapter;,
        Lcom/android/server/vibrator/VibrationEffectAdapters$SegmentsAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/os/VibrationEffect;Ljava/util/List;Ljava/lang/Object;)Landroid/os/VibrationEffect;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/VibrationEffect;",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationEffectAdapters$SegmentsAdapter<",
            "TT;>;>;TT;)",
            "Landroid/os/VibrationEffect;"
        }
    .end annotation

    instance-of v0, p0, Landroid/os/VibrationEffect$Composed;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/os/VibrationEffect$Composed;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/vibrator/VibrationEffectAdapters$SegmentsAdapter;

    invoke-interface {v5, v1, v2, p2}, Lcom/android/server/vibrator/VibrationEffectAdapters$SegmentsAdapter;->apply(Ljava/util/List;ILjava/lang/Object;)I

    move-result v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/os/VibrationEffect$Composed;

    invoke-direct {v4, v1, v2}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    return-object v4
.end method
