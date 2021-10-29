.class final Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;
.super Ljava/lang/Object;
.source "NotificationVoiceReplyManagerService.kt"


# instance fields
.field private final newState:I

.field private final sessionToken:I

.field private final userId:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;->userId:I

    iput p2, p0, Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;->sessionToken:I

    iput p3, p0, Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;->newState:I

    return-void
.end method


# virtual methods
.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;->newState:I

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;

    iget v1, p0, Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;->userId:I

    iget v3, p1, Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;->userId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;->sessionToken:I

    iget v3, p1, Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;->sessionToken:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;->newState:I

    iget p1, p1, Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;->newState:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getSessionToken()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;->sessionToken:I

    return p0
.end method

.method public final getUserId()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;->userId:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;->sessionToken:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;->newState:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnVoiceAuthStateChangedData(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sessionToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;->sessionToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;->newState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
