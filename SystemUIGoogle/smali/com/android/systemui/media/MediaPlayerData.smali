.class public final Lcom/android/systemui/media/MediaPlayerData;
.super Ljava/lang/Object;
.source "MediaCarouselController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaCarouselController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaPlayerData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1079:1\n1#2:1080\n1858#3,3:1081\n1547#3:1084\n1618#3,3:1085\n1858#3,3:1088\n1849#3,2:1091\n*S KotlinDebug\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaPlayerData\n*L\n1018#1:1081,3\n1033#1:1084\n1033#1:1085,3\n1043#1:1088,3\n1053#1:1091,2\n*E\n"
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/systemui/media/MediaData;

.field public static final INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

.field public static final comparator:Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$8;

.field public static final mediaData:Ljava/util/LinkedHashMap;

.field public static final mediaPlayers:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;",
            "Lcom/android/systemui/media/MediaControlPanel;",
            ">;"
        }
    .end annotation
.end field

.field public static shouldPrioritizeSs:Z

.field public static smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;


# direct methods
.method public static constructor <clinit>()V
    .locals 29

    new-instance v0, Lcom/android/systemui/media/MediaPlayerData;

    invoke-direct {v0}, Lcom/android/systemui/media/MediaPlayerData;-><init>()V

    sput-object v0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    new-instance v0, Lcom/android/systemui/media/MediaData;

    move-object v1, v0

    sget-object v10, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    move-object v9, v10

    const/4 v2, -0x1

    invoke-static {v2}, Lcom/android/internal/logging/InstanceId;->fakeInstanceId(I)Lcom/android/internal/logging/InstanceId;

    move-result-object v26

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-string v12, "INVALID"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v27, -0x1

    const v28, 0x7f0200

    invoke-direct/range {v1 .. v28}, Lcom/android/systemui/media/MediaData;-><init>(IZLjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/MediaButton;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/MediaDeviceData;ZLjava/lang/Runnable;IZLjava/lang/String;ZLjava/lang/Boolean;ZJLcom/android/internal/logging/InstanceId;II)V

    sput-object v0, Lcom/android/systemui/media/MediaPlayerData;->EMPTY:Lcom/android/systemui/media/MediaData;

    new-instance v0, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$compareByDescending$1;

    invoke-direct {v0}, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$compareByDescending$1;-><init>()V

    new-instance v1, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$1;-><init>(Lcom/android/systemui/media/MediaPlayerData$special$$inlined$compareByDescending$1;)V

    new-instance v0, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$2;

    invoke-direct {v0, v1}, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$2;-><init>(Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$1;)V

    new-instance v1, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$3;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$3;-><init>(Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$2;)V

    new-instance v0, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$4;

    invoke-direct {v0, v1}, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$4;-><init>(Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$3;)V

    new-instance v1, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$5;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$5;-><init>(Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$4;)V

    new-instance v0, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$6;

    invoke-direct {v0, v1}, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$6;-><init>(Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$5;)V

    new-instance v1, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$7;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$7;-><init>(Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$6;)V

    new-instance v0, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$8;

    invoke-direct {v0, v1}, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$8;-><init>(Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$7;)V

    sput-object v0, Lcom/android/systemui/media/MediaPlayerData;->comparator:Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$8;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v1, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMediaPlayer(Ljava/lang/String;Lcom/android/systemui/media/MediaData;Lcom/android/systemui/media/MediaControlPanel;Lcom/android/systemui/util/time/SystemClock;ZLcom/android/systemui/media/MediaCarouselControllerLogger;)V
    .locals 7

    invoke-static {p0}, Lcom/android/systemui/media/MediaPlayerData;->removeMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p5, p0}, Lcom/android/systemui/media/MediaCarouselControllerLogger;->logPotentialMemoryLeak(Ljava/lang/String;)V

    :cond_1
    :goto_0
    new-instance p5, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    const/4 v2, 0x0

    invoke-interface {p3}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p5

    move-object v3, p1

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;-><init>(ZLcom/android/systemui/media/MediaData;JZ)V

    sget-object p1, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/LinkedHashMap;

    invoke-interface {p1, p0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p0, p5, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addMediaRecommendation(Ljava/lang/String;Lcom/android/systemui/media/SmartspaceMediaData;Lcom/android/systemui/media/MediaControlPanel;ZLcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/media/MediaCarouselControllerLogger;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    sput-boolean p3, Lcom/android/systemui/media/MediaPlayerData;->shouldPrioritizeSs:Z

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/media/MediaPlayerData;->removeMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/media/MediaCarouselControllerLogger;->logPotentialMemoryLeak(Ljava/lang/String;)V

    :cond_1
    :goto_0
    new-instance v2, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    const/4 v5, 0x1

    sget-object v6, Lcom/android/systemui/media/MediaPlayerData;->EMPTY:Lcom/android/systemui/media/MediaData;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0x1efffff

    invoke-static/range {v6 .. v20}, Lcom/android/systemui/media/MediaData;->copy$default(Lcom/android/systemui/media/MediaData;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/MediaButton;Ljava/lang/String;Lcom/android/systemui/media/MediaDeviceData;ZLcom/android/systemui/media/MediaResumeListener$getResumeAction$1;ZZLjava/lang/Boolean;ZLcom/android/internal/logging/InstanceId;II)Lcom/android/systemui/media/MediaData;

    move-result-object v6

    invoke-interface/range {p4 .. p4}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v7

    const/4 v9, 0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;-><init>(ZLcom/android/systemui/media/MediaData;JZ)V

    sget-object v3, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/LinkedHashMap;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object p1, Lcom/android/systemui/media/MediaPlayerData;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    return-void
.end method

.method public static firstActiveMediaIndex()I
    .locals 5

    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_1

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    iget-boolean v4, v4, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->isSsMediaRec:Z

    if-nez v4, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    iget-object v2, v2, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/MediaData;

    iget-boolean v2, v2, Lcom/android/systemui/media/MediaData;->active:Z

    if-eqz v2, :cond_0

    return v1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 v0, 0x0

    throw v0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public static getMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;
    .locals 1

    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {v0, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaControlPanel;

    :goto_0
    return-object p0
.end method

.method public static getMediaPlayerIndex(Ljava/lang/String;)I
    .locals 4

    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_1

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static players()Ljava/util/Collection;
    .locals 1

    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static removeMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;
    .locals 2

    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->isSsMediaRec:Z

    if-eqz v1, :cond_1

    sput-object v0, Lcom/android/systemui/media/MediaPlayerData;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    :cond_1
    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {v0, p0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/media/MediaControlPanel;

    :goto_0
    return-object v0
.end method

.method public static smartspaceMediaKey()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    iget-boolean v2, v2, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->isSsMediaRec:Z

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 0

    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->clear()V

    return-void
.end method
