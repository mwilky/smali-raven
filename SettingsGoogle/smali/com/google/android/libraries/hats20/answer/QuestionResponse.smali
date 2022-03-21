.class public Lcom/google/android/libraries/hats20/answer/QuestionResponse;
.super Ljava/lang/Object;
.source "QuestionResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/libraries/hats20/answer/QuestionResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final delayMs:J

.field private final hasWriteIn:Z

.field private final ordering:Ljava/lang/String;

.field private final responses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/hats20/answer/QuestionResponse$1;

    invoke-direct {v0}, Lcom/google/android/libraries/hats20/answer/QuestionResponse$1;-><init>()V

    sput-object v0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->delayMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->responses:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->ordering:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->hasWriteIn:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/libraries/hats20/answer/QuestionResponse$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/hats20/answer/QuestionResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->access$000(Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->delayMs:J

    invoke-static {p1}, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->access$100(Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->responses:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->access$200(Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->ordering:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->access$300(Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->hasWriteIn:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;Lcom/google/android/libraries/hats20/answer/QuestionResponse$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/hats20/answer/QuestionResponse;-><init>(Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;)V

    return-void
.end method

.method public static builder()Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;
    .locals 2

    new-instance v0, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;-><init>(Lcom/google/android/libraries/hats20/answer/QuestionResponse$1;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/libraries/hats20/answer/QuestionResponse;

    iget-wide v1, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->delayMs:J

    iget-wide v3, p1, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->delayMs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    return v0

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->hasWriteIn:Z

    iget-boolean v2, p1, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->hasWriteIn:Z

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    iget-object v1, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->responses:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->responses:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    iget-object p0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->ordering:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->ordering:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    :goto_0
    return v0
.end method

.method getDelayMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->delayMs:J

    return-wide v0
.end method

.method getOrdering()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->ordering:Ljava/lang/String;

    return-object p0
.end method

.method getResponses()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->responses:Ljava/util/List;

    return-object p0
.end method

.method hasWriteIn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->hasWriteIn:Z

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->delayMs:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->responses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->ordering:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->hasWriteIn:Z

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->delayMs:J

    iget-object v2, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->responses:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->ordering:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->hasWriteIn:Z

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x59

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "QuestionResponse{delayMs="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", responses="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ordering=\'"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", hasWriteIn="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->delayMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->responses:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->ordering:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->hasWriteIn:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
