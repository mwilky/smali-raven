.class Lcom/android/server/pm/CrossProfileIntentFilter;
.super Lcom/android/server/pm/WatchedIntentFilter;
.source "CrossProfileIntentFilter.java"


# static fields
.field private static final ATTR_FILTER:Ljava/lang/String; = "filter"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_OWNER_PACKAGE:Ljava/lang/String; = "ownerPackage"

.field private static final ATTR_TARGET_USER_ID:Ljava/lang/String; = "targetUserId"

.field private static final TAG:Ljava/lang/String; = "CrossProfileIntentFilter"


# instance fields
.field final mFlags:I

.field final mOwnerPackage:Ljava/lang/String;

.field final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/CrossProfileIntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field final mTargetUserId:I


# direct methods
.method constructor <init>(Landroid/content/IntentFilter;Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    iput p3, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    iput-object p2, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    invoke-direct {p0}, Lcom/android/server/pm/CrossProfileIntentFilter;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method constructor <init>(Landroid/util/TypedXmlPullParser;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    const/4 v0, 0x0

    const-string v1, "targetUserId"

    const/16 v2, -0x2710

    invoke-interface {p1, v0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    const-string v1, "ownerPackage"

    const-string v2, ""

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/pm/CrossProfileIntentFilter;->getStringFromXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    const-string v1, "flags"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    invoke-direct {p0}, Lcom/android/server/pm/CrossProfileIntentFilter;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x5

    const-string v6, "filter"

    if-eq v2, v4, :cond_4

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    :cond_1
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v3, v2, :cond_0

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under crossProfile-intent-filters: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing element under CrossProfileIntentFilter: filter at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_2
    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/CrossProfileIntentFilter;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;)V

    iget v0, p1, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    iput v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    iget-object v0, p1, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    iget v0, p1, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    iput v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/CrossProfileIntentFilter;Lcom/android/server/pm/CrossProfileIntentFilter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Lcom/android/server/pm/CrossProfileIntentFilter;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/WatchedIntentFilter;Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p1, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Landroid/content/IntentFilter;Ljava/lang/String;II)V

    return-void
.end method

.method private getStringFromXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing element under CrossProfileIntentFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return-object p3

    :cond_0
    return-object v0
.end method

.method private makeCache()Lcom/android/server/utils/SnapshotCache;
    .locals 1

    new-instance v0, Lcom/android/server/pm/CrossProfileIntentFilter$1;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/CrossProfileIntentFilter$1;-><init>(Lcom/android/server/pm/CrossProfileIntentFilter;Lcom/android/server/pm/CrossProfileIntentFilter;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method


# virtual methods
.method equalsIgnoreFilter(Lcom/android/server/pm/CrossProfileIntentFilter;)Z
    .locals 2

    iget v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    iget v1, p1, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    iget v1, p1, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    return v0
.end method

.method public getOwnerPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetUserId()I
    .locals 1

    iget v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    return v0
.end method

.method public snapshot()Lcom/android/server/pm/CrossProfileIntentFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentFilter;

    return-object v0
.end method

.method public bridge synthetic snapshot()Lcom/android/server/pm/WatchedIntentFilter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/CrossProfileIntentFilter;->snapshot()Lcom/android/server/pm/CrossProfileIntentFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/CrossProfileIntentFilter;->snapshot()Lcom/android/server/pm/CrossProfileIntentFilter;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CrossProfileIntentFilter{0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToXml(Landroid/util/TypedXmlSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    const/4 v1, 0x0

    const-string v2, "targetUserId"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    const-string v2, "flags"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    const-string v2, "ownerPackage"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "filter"

    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
