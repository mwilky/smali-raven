.class public final Lcom/android/systemui/media/SeekBarViewModel$Progress;
.super Ljava/lang/Object;
.source "SeekBarViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/SeekBarViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Progress"
.end annotation


# instance fields
.field public final duration:I

.field public final elapsedTime:Ljava/lang/Integer;

.field public final enabled:Z

.field public final playing:Z

.field public final scrubbing:Z

.field public final seekAvailable:Z


# direct methods
.method public constructor <init>(ZZZZLjava/lang/Integer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->enabled:Z

    iput-boolean p2, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->seekAvailable:Z

    iput-boolean p3, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->playing:Z

    iput-boolean p4, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->scrubbing:Z

    iput-object p5, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    iput p6, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->duration:I

    return-void
.end method

.method public static copy$default(Lcom/android/systemui/media/SeekBarViewModel$Progress;ZLjava/lang/Integer;I)Lcom/android/systemui/media/SeekBarViewModel$Progress;
    .locals 9

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->enabled:Z

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->seekAvailable:Z

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->playing:Z

    move v5, v0

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->scrubbing:Z

    :cond_3
    move v6, p1

    and-int/lit8 p1, p3, 0x10

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    :cond_4
    move-object v7, p2

    and-int/lit8 p1, p3, 0x20

    if-eqz p1, :cond_5

    iget v1, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->duration:I

    :cond_5
    move v8, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/media/SeekBarViewModel$Progress;-><init>(ZZZZLjava/lang/Integer;I)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/SeekBarViewModel$Progress;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/SeekBarViewModel$Progress;

    iget-boolean v1, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->enabled:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/SeekBarViewModel$Progress;->enabled:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->seekAvailable:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/SeekBarViewModel$Progress;->seekAvailable:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->playing:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/SeekBarViewModel$Progress;->playing:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->scrubbing:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/SeekBarViewModel$Progress;->scrubbing:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/android/systemui/media/SeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget p0, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->duration:I

    iget p1, p1, Lcom/android/systemui/media/SeekBarViewModel$Progress;->duration:I

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->seekAvailable:Z

    if-eqz v2, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->playing:Z

    if-eqz v2, :cond_2

    move v2, v1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->scrubbing:Z

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->duration:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Progress(enabled="

    invoke-static {v0}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", seekAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->seekAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", playing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->playing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", scrubbing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->scrubbing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", elapsedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->duration:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
