.class Lcom/android/server/people/data/ConversationInfo$Builder;
.super Ljava/lang/Object;
.source "ConversationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/ConversationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mContactPhoneNumber:Ljava/lang/String;

.field private mContactUri:Landroid/net/Uri;

.field private mConversationFlags:I

.field private mCurrStatuses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/people/ConversationStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mLastEventTimestamp:J

.field private mLocusId:Landroid/content/LocusId;

.field private mNotificationChannelId:Ljava/lang/String;

.field private mParentNotificationChannelId:Ljava/lang/String;

.field private mShortcutFlags:I

.field private mShortcutId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/android/server/people/data/ConversationInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutId:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->access$1000(Lcom/android/server/people/data/ConversationInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->access$1000(Lcom/android/server/people/data/ConversationInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :goto_0
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->access$1100(Lcom/android/server/people/data/ConversationInfo;)Landroid/content/LocusId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mLocusId:Landroid/content/LocusId;

    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->access$1200(Lcom/android/server/people/data/ConversationInfo;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->access$1300(Lcom/android/server/people/data/ConversationInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactPhoneNumber:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->access$1400(Lcom/android/server/people/data/ConversationInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mNotificationChannelId:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->access$1500(Lcom/android/server/people/data/ConversationInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mParentNotificationChannelId:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->access$1600(Lcom/android/server/people/data/ConversationInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mLastEventTimestamp:J

    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->access$1700(Lcom/android/server/people/data/ConversationInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutFlags:I

    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->access$1800(Lcom/android/server/people/data/ConversationInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->access$1900(Lcom/android/server/people/data/ConversationInfo;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/people/data/ConversationInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/people/data/ConversationInfo$Builder;)Landroid/content/LocusId;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mLocusId:Landroid/content/LocusId;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/people/data/ConversationInfo$Builder;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/people/data/ConversationInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/people/data/ConversationInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mNotificationChannelId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/people/data/ConversationInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mParentNotificationChannelId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/people/data/ConversationInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mLastEventTimestamp:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/server/people/data/ConversationInfo$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutFlags:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/people/data/ConversationInfo$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/people/data/ConversationInfo$Builder;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    return-object v0
.end method

.method private addConversationFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    return-object p0
.end method

.method private removeConversationFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 2

    iget v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    return-object p0
.end method

.method private setConversationFlag(IZ)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->addConversationFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->removeConversationFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method addOrUpdateStatus(Landroid/app/people/ConversationStatus;)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method build()Lcom/android/server/people/data/ConversationInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/people/data/ConversationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/people/data/ConversationInfo;-><init>(Lcom/android/server/people/data/ConversationInfo$Builder;Lcom/android/server/people/data/ConversationInfo$1;)V

    return-object v0
.end method

.method clearStatus(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method setBubbled(Z)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method setContactPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactPhoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method setContactStarred(Z)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method setContactUri(Landroid/net/Uri;)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactUri:Landroid/net/Uri;

    return-object p0
.end method

.method setConversationFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    return-object p0
.end method

.method setDemoted(Z)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method setImportant(Z)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method setLastEventTimestamp(J)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mLastEventTimestamp:J

    return-object p0
.end method

.method setLocusId(Landroid/content/LocusId;)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mLocusId:Landroid/content/LocusId;

    return-object p0
.end method

.method setNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mNotificationChannelId:Ljava/lang/String;

    return-object p0
.end method

.method setNotificationSilenced(Z)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method setParentNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mParentNotificationChannelId:Ljava/lang/String;

    return-object p0
.end method

.method setPersonBot(Z)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method setPersonImportant(Z)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method setShortcutFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutFlags:I

    return-object p0
.end method

.method setShortcutId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutId:Ljava/lang/String;

    return-object p0
.end method

.method setStatuses(Ljava/util/List;)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationStatus;",
            ">;)",
            "Lcom/android/server/people/data/ConversationInfo$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/people/ConversationStatus;

    iget-object v2, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/app/people/ConversationStatus;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method
