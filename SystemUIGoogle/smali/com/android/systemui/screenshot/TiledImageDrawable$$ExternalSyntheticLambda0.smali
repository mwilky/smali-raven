.class public final synthetic Lcom/android/systemui/screenshot/TiledImageDrawable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/systemui/screenshot/ImageTileSet$OnContentChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/TiledImageDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/TiledImageDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/TiledImageDrawable$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/TiledImageDrawable;

    return-void
.end method


# virtual methods
.method public final onContentChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/screenshot/TiledImageDrawable$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/TiledImageDrawable;

    iget-object v0, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mNode:Landroid/graphics/RenderNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->discardDisplayList()V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
