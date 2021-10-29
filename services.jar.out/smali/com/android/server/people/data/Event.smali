.class public Lcom/android/server/people/data/Event;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/data/Event$Builder;,
        Lcom/android/server/people/data/Event$EventType;
    }
.end annotation


# static fields
.field public static final ALL_EVENT_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CALL_EVENT_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOTIFICATION_EVENT_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHARE_EVENT_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SMS_EVENT_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_CALL_INCOMING:I = 0xb

.field public static final TYPE_CALL_MISSED:I = 0xc

.field public static final TYPE_CALL_OUTGOING:I = 0xa

.field public static final TYPE_IN_APP_CONVERSATION:I = 0xd

.field public static final TYPE_NOTIFICATION_OPENED:I = 0x3

.field public static final TYPE_NOTIFICATION_POSTED:I = 0x2

.field public static final TYPE_SHARE_IMAGE:I = 0x5

.field public static final TYPE_SHARE_OTHER:I = 0x7

.field public static final TYPE_SHARE_TEXT:I = 0x4

.field public static final TYPE_SHARE_VIDEO:I = 0x6

.field public static final TYPE_SHORTCUT_INVOCATION:I = 0x1

.field public static final TYPE_SMS_INCOMING:I = 0x9

.field public static final TYPE_SMS_OUTGOING:I = 0x8


# instance fields
.field private final mDurationSeconds:I

.field private final mTimestamp:J

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/android/server/people/data/Event;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/people/data/Event;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/people/data/Event;->NOTIFICATION_EVENT_TYPES:Ljava/util/Set;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Lcom/android/server/people/data/Event;->SHARE_EVENT_TYPES:Ljava/util/Set;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    sput-object v2, Lcom/android/server/people/data/Event;->SMS_EVENT_TYPES:Ljava/util/Set;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    sput-object v3, Lcom/android/server/people/data/Event;->CALL_EVENT_TYPES:Ljava/util/Set;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    sput-object v4, Lcom/android/server/people/data/Event;->ALL_EVENT_TYPES:Ljava/util/Set;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v5, 0xb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v5, 0xd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method constructor <init>(JI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/people/data/Event;->mTimestamp:J

    iput p3, p0, Lcom/android/server/people/data/Event;->mType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    return-void
.end method

.method private constructor <init>(Lcom/android/server/people/data/Event$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/server/people/data/Event$Builder;->access$000(Lcom/android/server/people/data/Event$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/people/data/Event;->mTimestamp:J

    invoke-static {p1}, Lcom/android/server/people/data/Event$Builder;->access$100(Lcom/android/server/people/data/Event$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/people/data/Event;->mType:I

    invoke-static {p1}, Lcom/android/server/people/data/Event$Builder;->access$200(Lcom/android/server/people/data/Event$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/people/data/Event$Builder;Lcom/android/server/people/data/Event$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/people/data/Event;-><init>(Lcom/android/server/people/data/Event$Builder;)V

    return-void
.end method

.method static readFromProto(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/people/data/Event;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/people/data/Event$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/people/data/Event$Builder;-><init>(Lcom/android/server/people/data/Event$1;)V

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/android/server/people/data/Event;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read undefined field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const-wide v1, 0x10500000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/Event$Builder;->setDurationSeconds(I)Lcom/android/server/people/data/Event$Builder;

    goto :goto_0

    :pswitch_1
    const-wide v1, 0x10300000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/people/data/Event$Builder;->access$500(Lcom/android/server/people/data/Event$Builder;J)Lcom/android/server/people/data/Event$Builder;

    goto :goto_0

    :pswitch_2
    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/people/data/Event$Builder;->access$400(Lcom/android/server/people/data/Event$Builder;I)Lcom/android/server/people/data/Event$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/people/data/Event$Builder;->build()Lcom/android/server/people/data/Event;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/server/people/data/Event;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/people/data/Event;

    iget-wide v3, p0, Lcom/android/server/people/data/Event;->mTimestamp:J

    iget-wide v5, v1, Lcom/android/server/people/data/Event;->mTimestamp:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/server/people/data/Event;->mType:I

    iget v4, v1, Lcom/android/server/people/data/Event;->mType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    iget v4, v1, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getDurationSeconds()I
    .locals 1

    iget v0, p0, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/people/data/Event;->mTimestamp:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/android/server/people/data/Event;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/android/server/people/data/Event;->mTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/people/data/Event;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/people/data/Event;->mTimestamp:J

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v3, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/people/data/Event;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    if-lez v1, :cond_0

    const-string v1, ", durationSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4

    iget v0, p0, Lcom/android/server/people/data/Event;->mType:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-wide v0, p0, Lcom/android/server/people/data/Event;->mTimestamp:J

    const-wide v2, 0x10300000002L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget v0, p0, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    const-wide v1, 0x10500000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method
