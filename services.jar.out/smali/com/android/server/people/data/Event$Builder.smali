.class Lcom/android/server/people/data/Event$Builder;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mDurationSeconds:I

.field private mTimestamp:J

.field private mType:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/people/data/Event$Builder;->mTimestamp:J

    iput p3, p0, Lcom/android/server/people/data/Event$Builder;->mType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/people/data/Event$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/people/data/Event$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/people/data/Event$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/people/data/Event$Builder;->mTimestamp:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/server/people/data/Event$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/server/people/data/Event$Builder;->mType:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/people/data/Event$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/server/people/data/Event$Builder;->mDurationSeconds:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/people/data/Event$Builder;I)Lcom/android/server/people/data/Event$Builder;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/people/data/Event$Builder;->setType(I)Lcom/android/server/people/data/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/people/data/Event$Builder;J)Lcom/android/server/people/data/Event$Builder;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/Event$Builder;->setTimestamp(J)Lcom/android/server/people/data/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method private setTimestamp(J)Lcom/android/server/people/data/Event$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/android/server/people/data/Event$Builder;->mTimestamp:J

    return-object p0
.end method

.method private setType(I)Lcom/android/server/people/data/Event$Builder;
    .locals 0

    iput p1, p0, Lcom/android/server/people/data/Event$Builder;->mType:I

    return-object p0
.end method


# virtual methods
.method build()Lcom/android/server/people/data/Event;
    .locals 2

    new-instance v0, Lcom/android/server/people/data/Event;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/people/data/Event;-><init>(Lcom/android/server/people/data/Event$Builder;Lcom/android/server/people/data/Event$1;)V

    return-object v0
.end method

.method setDurationSeconds(I)Lcom/android/server/people/data/Event$Builder;
    .locals 0

    iput p1, p0, Lcom/android/server/people/data/Event$Builder;->mDurationSeconds:I

    return-object p0
.end method
