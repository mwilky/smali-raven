.class Lcom/android/settings/widget/MediaAnimationController$1;
.super Ljava/lang/Object;
.source "MediaAnimationController.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/MediaAnimationController;->attachView(Landroid/view/TextureView;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/MediaAnimationController;

.field final synthetic val$playButton:Landroid/view/View;

.field final synthetic val$preview:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/MediaAnimationController;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/MediaAnimationController$1;->this$0:Lcom/android/settings/widget/MediaAnimationController;

    iput-object p2, p0, Lcom/android/settings/widget/MediaAnimationController$1;->val$preview:Landroid/view/View;

    iput-object p3, p0, Lcom/android/settings/widget/MediaAnimationController$1;->val$playButton:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/MediaAnimationController$1;->this$0:Lcom/android/settings/widget/MediaAnimationController;

    invoke-static {p0, p1}, Lcom/android/settings/widget/MediaAnimationController;->access$000(Lcom/android/settings/widget/MediaAnimationController;Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    iget-object p1, p0, Lcom/android/settings/widget/MediaAnimationController$1;->val$preview:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/widget/MediaAnimationController$1;->this$0:Lcom/android/settings/widget/MediaAnimationController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/widget/MediaAnimationController;->access$102(Lcom/android/settings/widget/MediaAnimationController;Landroid/view/Surface;)Landroid/view/Surface;

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/MediaAnimationController$1;->this$0:Lcom/android/settings/widget/MediaAnimationController;

    invoke-static {v0, p1}, Lcom/android/settings/widget/MediaAnimationController;->access$000(Lcom/android/settings/widget/MediaAnimationController;Landroid/graphics/SurfaceTexture;)V

    iget-object p1, p0, Lcom/android/settings/widget/MediaAnimationController$1;->this$0:Lcom/android/settings/widget/MediaAnimationController;

    invoke-static {p1}, Lcom/android/settings/widget/MediaAnimationController;->access$200(Lcom/android/settings/widget/MediaAnimationController;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/widget/MediaAnimationController$1;->val$preview:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/widget/MediaAnimationController$1;->val$preview:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/MediaAnimationController$1;->this$0:Lcom/android/settings/widget/MediaAnimationController;

    invoke-static {p1}, Lcom/android/settings/widget/MediaAnimationController;->access$300(Lcom/android/settings/widget/MediaAnimationController;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/widget/MediaAnimationController$1;->this$0:Lcom/android/settings/widget/MediaAnimationController;

    invoke-static {p1}, Lcom/android/settings/widget/MediaAnimationController;->access$300(Lcom/android/settings/widget/MediaAnimationController;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/widget/MediaAnimationController$1;->this$0:Lcom/android/settings/widget/MediaAnimationController;

    invoke-static {p1}, Lcom/android/settings/widget/MediaAnimationController;->access$300(Lcom/android/settings/widget/MediaAnimationController;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    iget-object p1, p0, Lcom/android/settings/widget/MediaAnimationController$1;->val$playButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/android/settings/widget/MediaAnimationController$1;->this$0:Lcom/android/settings/widget/MediaAnimationController;

    invoke-static {p1}, Lcom/android/settings/widget/MediaAnimationController;->access$300(Lcom/android/settings/widget/MediaAnimationController;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/widget/MediaAnimationController$1;->this$0:Lcom/android/settings/widget/MediaAnimationController;

    invoke-static {p1}, Lcom/android/settings/widget/MediaAnimationController;->access$300(Lcom/android/settings/widget/MediaAnimationController;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/widget/MediaAnimationController$1;->val$playButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/settings/widget/MediaAnimationController$1;->val$playButton:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
