.class public final Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;
.super Ljava/lang/Object;
.source "DisableFlagsLogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/DisableFlagsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisableState"
.end annotation


# instance fields
.field private final disable1:I

.field private final disable2:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;->disable1:I

    iput p2, p0, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;->disable2:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;

    iget v1, p0, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;->disable1:I

    iget v3, p1, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;->disable1:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;->disable2:I

    iget p1, p1, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;->disable2:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDisable1()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;->disable1:I

    return p0
.end method

.method public final getDisable2()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;->disable2:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;->disable1:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;->disable2:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisableState(disable1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;->disable1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", disable2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;->disable2:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
