.class Lcom/android/systemui/screenshot/ImageTileSet;
.super Ljava/lang/Object;
.source "ImageTileSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/ImageTileSet$OnContentChangedListener;
    }
.end annotation


# instance fields
.field private mContentListeners:Lcom/android/internal/util/CallbackRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/CallbackRegistry<",
            "Lcom/android/systemui/screenshot/ImageTileSet$OnContentChangedListener;",
            "Lcom/android/systemui/screenshot/ImageTileSet;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mRegion:Landroid/graphics/Region;

.field private final mTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/screenshot/ImageTile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$_LStMIBHaVYrT9fDZ1BmYXPm9Ow(Lcom/android/systemui/screenshot/ImageTileSet;Lcom/android/systemui/screenshot/ImageTile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ImageTileSet;->lambda$addTile$0(Lcom/android/systemui/screenshot/ImageTile;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mTiles:Ljava/util/List;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mRegion:Landroid/graphics/Region;

    iput-object p1, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$addTile$0(Lcom/android/systemui/screenshot/ImageTile;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ImageTileSet;->addTile(Lcom/android/systemui/screenshot/ImageTile;)V

    return-void
.end method

.method private notifyContentChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mContentListeners:Lcom/android/internal/util/CallbackRegistry;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/util/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method addOnContentChangedListener(Lcom/android/systemui/screenshot/ImageTileSet$OnContentChangedListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mContentListeners:Lcom/android/internal/util/CallbackRegistry;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/util/CallbackRegistry;

    new-instance v1, Lcom/android/systemui/screenshot/ImageTileSet$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/ImageTileSet$1;-><init>(Lcom/android/systemui/screenshot/ImageTileSet;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/CallbackRegistry;-><init>(Lcom/android/internal/util/CallbackRegistry$NotifierCallback;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mContentListeners:Lcom/android/internal/util/CallbackRegistry;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mContentListeners:Lcom/android/internal/util/CallbackRegistry;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/CallbackRegistry;->add(Ljava/lang/Object;)V

    return-void
.end method

.method addTile(Lcom/android/systemui/screenshot/ImageTile;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/screenshot/ImageTileSet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/screenshot/ImageTileSet$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/ImageTileSet;Lcom/android/systemui/screenshot/ImageTile;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mTiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mRegion:Landroid/graphics/Region;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ImageTile;->getLocation()Landroid/graphics/Rect;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mRegion:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ImageTileSet;->notifyContentChanged()V

    return-void
.end method

.method clear()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/screenshot/ImageTile;

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ImageTile;->close()V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ImageTileSet;->notifyContentChanged()V

    return-void
.end method

.method get(I)Lcom/android/systemui/screenshot/ImageTile;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mTiles:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/screenshot/ImageTile;

    return-object p0
.end method

.method getBottom()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lcom/android/systemui/screenshot/TiledImageDrawable;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/TiledImageDrawable;-><init>(Lcom/android/systemui/screenshot/ImageTileSet;)V

    return-object v0
.end method

.method getGaps()Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mRegion:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, p0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method getHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method getLeft()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method getTop()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method getWidth()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method size()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mTiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method toBitmap()Landroid/graphics/Bitmap;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ImageTileSet;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ImageTileSet;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ImageTileSet;->toBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method toBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "Bitmap Export"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ImageTileSet;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v0, p0, p1}, Landroid/graphics/HardwareRenderer;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
