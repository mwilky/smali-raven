.class public Lcom/android/systemui/media/dream/MediaDreamSentinel;
.super Lcom/android/systemui/CoreStartable;
.source "MediaDreamSentinel.java"


# instance fields
.field public final mComplication:Lcom/android/systemui/media/dream/MediaDreamComplication;

.field public final mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public mListener:Lcom/android/systemui/media/dream/MediaDreamSentinel$1;

.field public final mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/media/dream/MediaDreamComplication;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/CoreStartable;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/systemui/media/dream/MediaDreamSentinel$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/dream/MediaDreamSentinel$1;-><init>(Lcom/android/systemui/media/dream/MediaDreamSentinel;)V

    iput-object p1, p0, Lcom/android/systemui/media/dream/MediaDreamSentinel;->mListener:Lcom/android/systemui/media/dream/MediaDreamSentinel$1;

    iput-object p2, p0, Lcom/android/systemui/media/dream/MediaDreamSentinel;->mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    iput-object p3, p0, Lcom/android/systemui/media/dream/MediaDreamSentinel;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iput-object p4, p0, Lcom/android/systemui/media/dream/MediaDreamSentinel;->mComplication:Lcom/android/systemui/media/dream/MediaDreamComplication;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/dream/MediaDreamSentinel;->mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    iget-object p0, p0, Lcom/android/systemui/media/dream/MediaDreamSentinel;->mListener:Lcom/android/systemui/media/dream/MediaDreamSentinel$1;

    iget-object v0, v0, Lcom/android/systemui/media/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/MediaDataFilter;

    iget-object v0, v0, Lcom/android/systemui/media/MediaDataFilter;->_listeners:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
