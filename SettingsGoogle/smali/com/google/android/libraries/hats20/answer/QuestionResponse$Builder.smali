.class public Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;
.super Ljava/lang/Object;
.source "QuestionResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/hats20/answer/QuestionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private delayMs:J

.field private hasWriteIn:Z

.field private ordering:Ljava/lang/String;

.field private responses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->delayMs:J

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->responses:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->ordering:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->hasWriteIn:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/hats20/answer/QuestionResponse$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->delayMs:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->responses:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->ordering:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->hasWriteIn:Z

    return p0
.end method


# virtual methods
.method public addResponse(Ljava/lang/String;)Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->responses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/google/android/libraries/hats20/answer/QuestionResponse;
    .locals 2

    new-instance v0, Lcom/google/android/libraries/hats20/answer/QuestionResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/hats20/answer/QuestionResponse;-><init>(Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;Lcom/google/android/libraries/hats20/answer/QuestionResponse$1;)V

    return-object v0
.end method

.method public setDelayMs(J)Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->delayMs:J

    return-object p0
.end method

.method public setOrdering(Ljava/util/List;)Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->ordering:Ljava/lang/String;

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->ordering:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->ordering:Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must specify at least one ordering entry."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
