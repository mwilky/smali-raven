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
.field private final duration:I

.field private final elapsedTime:Ljava/lang/Integer;

.field private final enabled:Z

.field private final seekAvailable:Z


# direct methods
.method public constructor <init>(ZZLjava/lang/Integer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->enabled:Z

    iput-boolean p2, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->seekAvailable:Z

    iput-object p3, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    iput p4, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->duration:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/media/SeekBarViewModel$Progress;ZZLjava/lang/Integer;IILjava/lang/Object;)Lcom/android/systemui/media/SeekBarViewModel$Progress;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->enabled:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->seekAvailable:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->duration:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/media/SeekBarViewModel$Progress;->copy(ZZLjava/lang/Integer;I)Lcom/android/systemui/media/SeekBarViewModel$Progress;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(ZZLjava/lang/Integer;I)Lcom/android/systemui/media/SeekBarViewModel$Progress;
    .locals 0

    new-instance p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/media/SeekBarViewModel$Progress;-><init>(ZZLjava/lang/Integer;I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
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
    iget-object v1, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/android/systemui/media/SeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->duration:I

    iget p1, p1, Lcom/android/systemui/media/SeekBarViewModel$Progress;->duration:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDuration()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->duration:I

    return p0
.end method

.method public final getElapsedTime()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->enabled:Z

    return p0
.end method

.method public final getSeekAvailable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->seekAvailable:Z

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->seekAvailable:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->duration:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Progress(enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", seekAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->seekAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", elapsedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->duration:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
