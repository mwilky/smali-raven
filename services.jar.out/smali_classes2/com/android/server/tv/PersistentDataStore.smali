.class final Lcom/android/server/tv/PersistentDataStore;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# static fields
.field private static final ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final ATTR_STRING:Ljava/lang/String; = "string"

.field private static final TAG:Ljava/lang/String; = "TvInputManagerService"

.field private static final TAG_BLOCKED_RATINGS:Ljava/lang/String; = "blocked-ratings"

.field private static final TAG_PARENTAL_CONTROLS:Ljava/lang/String; = "parental-controls"

.field private static final TAG_RATING:Ljava/lang/String; = "rating"

.field private static final TAG_TV_INPUT_MANAGER_STATE:Ljava/lang/String; = "tv-input-manager-state"


# instance fields
.field private final mAtomicFile:Landroid/util/AtomicFile;

.field private final mBlockedRatings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/TvContentRating;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockedRatingsChanged:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLoaded:Z

.field private mParentalControlsEnabled:Z

.field private mParentalControlsEnabledChanged:Z

.field private final mSaveRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    new-instance v0, Lcom/android/server/tv/PersistentDataStore$1;

    invoke-direct {v0, p0}, Lcom/android/server/tv/PersistentDataStore$1;-><init>(Lcom/android/server/tv/PersistentDataStore;)V

    iput-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mSaveRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/tv/PersistentDataStore;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User dir cannot be created: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "tv-input-manager-state.xml"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "tv-input-state"

    invoke-direct {v1, v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/tv/PersistentDataStore;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->save()V

    return-void
.end method

.method private broadcastChangesIfNeeded()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabledChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabledChanged:Z

    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.tv.action.PARENTAL_CONTROLS_ENABLED_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatingsChanged:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatingsChanged:Z

    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.tv.action.BLOCKED_RATINGS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    return-void
.end method

.method private clearState()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    return-void
.end method

.method private load()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->clearState()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    :try_start_1
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/tv/PersistentDataStore;->loadFromXml(Landroid/util/TypedXmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "TvInputManagerService"

    const-string v3, "Failed to load tv input manager persistent store data."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->clearState()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    :goto_0
    return-void

    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    :catch_1
    move-exception v0

    return-void
.end method

.method private loadBlockedRatingsFromXml(Landroid/util/TypedXmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rating"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const-string v2, "string"

    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-static {v1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Missing string attribute on rating"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    return-void
.end method

.method private loadFromXml(Landroid/util/TypedXmlPullParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string v0, "tv-input-manager-state"

    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "blocked-ratings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/tv/PersistentDataStore;->loadBlockedRatingsFromXml(Landroid/util/TypedXmlPullParser;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "parental-controls"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const-string v2, "enabled"

    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private loadIfNeeded()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mLoaded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->load()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mLoaded:Z

    :cond_0
    return-void
.end method

.method private postSave()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private save()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/tv/PersistentDataStore;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-eqz v1, :cond_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->broadcastChangesIfNeeded()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    nop

    :goto_0
    goto :goto_2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->broadcastChangesIfNeeded()V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_1
    nop

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "TvInputManagerService"

    const-string v2, "Failed to save tv input manager persistent store data."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private saveToXml(Landroid/util/TypedXmlSerializer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "tv-input-manager-state"

    invoke-interface {p1, v2, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "blocked-ratings"

    invoke-interface {p1, v2, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/tv/TvContentRating;

    const-string v4, "rating"

    invoke-interface {p1, v2, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "string"

    invoke-virtual {v3}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v2, v4, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "rating"

    invoke-interface {p1, v2, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    nop

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "blocked-ratings"

    invoke-interface {p1, v2, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "parental-controls"

    invoke-interface {p1, v2, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "enabled"

    iget-boolean v1, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    invoke-interface {p1, v2, v0, v1}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "parental-controls"

    invoke-interface {p1, v2, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "tv-input-manager-state"

    invoke-interface {p1, v2, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1}, Landroid/util/TypedXmlSerializer;->endDocument()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addBlockedRating(Landroid/media/tv/TvContentRating;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatingsChanged:Z

    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->postSave()V

    :cond_0
    return-void
.end method

.method public getBlockedRatings()[Landroid/media/tv/TvContentRating;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/tv/TvContentRating;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/tv/TvContentRating;

    return-object v0
.end method

.method public isParentalControlsEnabled()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    return v0
.end method

.method public isRatingBlocked(Landroid/media/tv/TvContentRating;)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvContentRating;

    invoke-virtual {p1, v2}, Landroid/media/tv/TvContentRating;->contains(Landroid/media/tv/TvContentRating;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeBlockedRating(Landroid/media/tv/TvContentRating;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatingsChanged:Z

    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->postSave()V

    :cond_0
    return-void
.end method

.method public setParentalControlsEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabledChanged:Z

    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->postSave()V

    :cond_0
    return-void
.end method
