.class final Lcom/android/server/blob/BlobMetadata$Leasee;
.super Lcom/android/server/blob/BlobMetadata$Accessor;
.source "BlobMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Leasee"
.end annotation


# instance fields
.field public final description:Ljava/lang/CharSequence;

.field public final descriptionResEntryName:Ljava/lang/String;

.field public final expiryTimeMillis:J


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;IILjava/lang/CharSequence;J)V
    .locals 2

    invoke-direct {p0, p2, p3}, Lcom/android/server/blob/BlobMetadata$Accessor;-><init>(Ljava/lang/String;I)V

    nop

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/server/blob/BlobStoreUtils;->getPackageResources(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/android/server/blob/BlobMetadata$Leasee;->getResourceEntryName(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    iput-wide p6, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    if-nez p5, :cond_0

    invoke-static {v0, p4}, Lcom/android/server/blob/BlobMetadata$Leasee;->getDescription(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p5

    :goto_0
    iput-object v1, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->description:Ljava/lang/CharSequence;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/CharSequence;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/blob/BlobMetadata$Accessor;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    iput-wide p5, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    iput-object p4, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->description:Ljava/lang/CharSequence;

    return-void
.end method

.method static createFromXml(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/blob/BlobMetadata$Leasee;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "p"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "u"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v8

    const/4 v1, 0x3

    if-lt p1, v1, :cond_0

    const-string/jumbo v1, "rn"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v9, v1

    :goto_0
    const-string v1, "ex"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    const/4 v1, 0x2

    if-lt p1, v1, :cond_1

    const-string v1, "d"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    move-object v12, v1

    :goto_1
    new-instance v13, Lcom/android/server/blob/BlobMetadata$Leasee;

    move-object v1, v13

    move-object v2, v0

    move v3, v8

    move-object v4, v9

    move-object v5, v12

    move-wide v6, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/server/blob/BlobMetadata$Leasee;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/CharSequence;J)V

    return-object v13
.end method

.method private static getDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, p2, p3}, Lcom/android/server/blob/BlobStoreUtils;->getPackageResources(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {v1, p1, p2}, Lcom/android/server/blob/BlobStoreUtils;->getDescriptionResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private static getDescription(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDescriptionToDump(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/blob/BlobMetadata$Leasee;->getDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->description:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v1, "<none>"

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private static getResourceEntryName(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method dump(Landroid/content/Context;Landroid/util/IndentingPrintWriter;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "desc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobMetadata$Leasee;->getDescriptionToDump(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expiryMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method isStillValid()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "p"

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->uid:I

    const-string/jumbo v1, "u"

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    const-string/jumbo v1, "rn"

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-wide v0, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    const-string v2, "ex"

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->description:Ljava/lang/CharSequence;

    const-string v1, "d"

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
