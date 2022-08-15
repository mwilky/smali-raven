.class public Lcom/android/server/hdmi/AudioStatus;
.super Ljava/lang/Object;
.source "AudioStatus.java"


# instance fields
.field public mMute:Z

.field public mVolume:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/hdmi/AudioStatus;->mVolume:I

    iput-boolean p2, p0, Lcom/android/server/hdmi/AudioStatus;->mMute:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/server/hdmi/AudioStatus;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/server/hdmi/AudioStatus;

    iget v0, p0, Lcom/android/server/hdmi/AudioStatus;->mVolume:I

    iget v2, p1, Lcom/android/server/hdmi/AudioStatus;->mVolume:I

    if-ne v0, v2, :cond_1

    iget-boolean p0, p0, Lcom/android/server/hdmi/AudioStatus;->mMute:Z

    iget-boolean p1, p1, Lcom/android/server/hdmi/AudioStatus;->mMute:Z

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getMute()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/hdmi/AudioStatus;->mMute:Z

    return p0
.end method

.method public getVolume()I
    .locals 0

    iget p0, p0, Lcom/android/server/hdmi/AudioStatus;->mVolume:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/hdmi/AudioStatus;->mVolume:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/android/server/hdmi/AudioStatus;->mMute:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioStatus mVolume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hdmi/AudioStatus;->mVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mMute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/hdmi/AudioStatus;->mMute:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
