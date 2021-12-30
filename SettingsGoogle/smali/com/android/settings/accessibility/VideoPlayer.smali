.class public Lcom/android/settings/accessibility/VideoPlayer;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/VideoPlayer$State;
    }
.end annotation


# instance fields
.field mAnimationSurface:Landroid/view/Surface;

.field private final mContext:Landroid/content/Context;

.field mMediaPlayer:Landroid/media/MediaPlayer;

.field private final mMediaPlayerLock:Ljava/lang/Object;

.field mMediaPlayerState:Lcom/android/settings/accessibility/VideoPlayer$State;

.field private final mVideoRes:I


# direct methods
.method private constructor <init>(Landroid/content/Context;ILandroid/view/TextureView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/VideoPlayer;->mMediaPlayerLock:Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/accessibility/VideoPlayer$State;->NONE:Lcom/android/settings/accessibility/VideoPlayer$State;

    iput-object v0, p0, Lcom/android/settings/accessibility/VideoPlayer;->mMediaPlayerState:Lcom/android/settings/accessibility/VideoPlayer$State;

    iput-object p1, p0, Lcom/android/settings/accessibility/VideoPlayer;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/settings/accessibility/VideoPlayer;->mVideoRes:I

    invoke-virtual {p3, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public static create(Landroid/content/Context;ILandroid/view/TextureView;)Lcom/android/settings/accessibility/VideoPlayer;
    .locals 1

    new-instance v0, Lcom/android/settings/accessibility/VideoPlayer;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/accessibility/VideoPlayer;-><init>(Landroid/content/Context;ILandroid/view/TextureView;)V

    return-object v0
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/android/settings/accessibility/VideoPlayer;->mAnimationSurface:Landroid/view/Surface;

    iget-object p1, p0, Lcom/android/settings/accessibility/VideoPlayer;->mMediaPlayerLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/settings/accessibility/VideoPlayer;->mContext:Landroid/content/Context;

    iget p3, p0, Lcom/android/settings/accessibility/VideoPlayer;->mVideoRes:I

    invoke-static {p2, p3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/accessibility/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object p3, Lcom/android/settings/accessibility/VideoPlayer$State;->PREPARED:Lcom/android/settings/accessibility/VideoPlayer$State;

    iput-object p3, p0, Lcom/android/settings/accessibility/VideoPlayer;->mMediaPlayerState:Lcom/android/settings/accessibility/VideoPlayer$State;

    iget-object p3, p0, Lcom/android/settings/accessibility/VideoPlayer;->mAnimationSurface:Landroid/view/Surface;

    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object p2, p0, Lcom/android/settings/accessibility/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object p2, p0, Lcom/android/settings/accessibility/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->start()V

    sget-object p2, Lcom/android/settings/accessibility/VideoPlayer$State;->STARTED:Lcom/android/settings/accessibility/VideoPlayer$State;

    iput-object p2, p0, Lcom/android/settings/accessibility/VideoPlayer;->mMediaPlayerState:Lcom/android/settings/accessibility/VideoPlayer$State;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VideoPlayer;->release()V

    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/accessibility/VideoPlayer;->mMediaPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/VideoPlayer;->mMediaPlayerState:Lcom/android/settings/accessibility/VideoPlayer$State;

    sget-object v2, Lcom/android/settings/accessibility/VideoPlayer$State;->NONE:Lcom/android/settings/accessibility/VideoPlayer$State;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/settings/accessibility/VideoPlayer$State;->END:Lcom/android/settings/accessibility/VideoPlayer$State;

    if-eq v1, v2, :cond_0

    iput-object v2, p0, Lcom/android/settings/accessibility/VideoPlayer;->mMediaPlayerState:Lcom/android/settings/accessibility/VideoPlayer$State;

    iget-object v1, p0, Lcom/android/settings/accessibility/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    iput-object v3, p0, Lcom/android/settings/accessibility/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/settings/accessibility/VideoPlayer;->mAnimationSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v3, p0, Lcom/android/settings/accessibility/VideoPlayer;->mAnimationSurface:Landroid/view/Surface;

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
