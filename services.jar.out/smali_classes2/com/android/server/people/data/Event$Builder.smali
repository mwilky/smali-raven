.class public Lcom/android/server/people/data/Event$Builder;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mDurationSeconds:I

.field public mTimestamp:J

.field public mType:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDurationSeconds(Lcom/android/server/people/data/Event$Builder;)I
    .locals 0

    iget p0, p0, Lcom/android/server/people/data/Event$Builder;->mDurationSeconds:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimestamp(Lcom/android/server/people/data/Event$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/people/data/Event$Builder;->mTimestamp:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmType(Lcom/android/server/people/data/Event$Builder;)I
    .locals 0

    iget p0, p0, Lcom/android/server/people/data/Event$Builder;->mType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetTimestamp(Lcom/android/server/people/data/Event$Builder;J)Lcom/android/server/people/data/Event$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/Event$Builder;->setTimestamp(J)Lcom/android/server/people/data/Event$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetType(Lcom/android/server/people/data/Event$Builder;I)Lcom/android/server/people/data/Event$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/Event$Builder;->setType(I)Lcom/android/server/people/data/Event$Builder;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/people/data/Event$Builder;->mTimestamp:J

    iput p3, p0, Lcom/android/server/people/data/Event$Builder;->mType:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/people/data/Event$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/people/data/Event$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/people/data/Event;
    .locals 2

    new-instance v0, Lcom/android/server/people/data/Event;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/people/data/Event;-><init>(Lcom/android/server/people/data/Event$Builder;Lcom/android/server/people/data/Event-IA;)V

    return-object v0
.end method

.method public setDurationSeconds(I)Lcom/android/server/people/data/Event$Builder;
    .locals 0

    iput p1, p0, Lcom/android/server/people/data/Event$Builder;->mDurationSeconds:I

    return-object p0
.end method

.method public final setTimestamp(J)Lcom/android/server/people/data/Event$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/android/server/people/data/Event$Builder;->mTimestamp:J

    return-object p0
.end method

.method public final setType(I)Lcom/android/server/people/data/Event$Builder;
    .locals 0

    iput p1, p0, Lcom/android/server/people/data/Event$Builder;->mType:I

    return-object p0
.end method
