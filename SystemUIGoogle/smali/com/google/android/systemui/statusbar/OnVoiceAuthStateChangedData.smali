.class public final Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;
.super Ljava/lang/Object;
.source "NotificationVoiceReplyManagerService.kt"


# instance fields
.field public final newState:I

.field public final sessionToken:I

.field public final userId:I


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
.method public final equals(Ljava/lang/Object;)Z
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

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;->sessionToken:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/android/keyguard/FontInterpolator$VarFontKey$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;->newState:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "OnVoiceAuthStateChangedData(userId="

    invoke-static {v0}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sessionToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;->sessionToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;->newState:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
