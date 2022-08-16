.class public final Lcom/android/systemui/screenshot/ImageTileSet$1;
.super Lcom/android/internal/util/CallbackRegistry$NotifierCallback;
.source "ImageTileSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/util/CallbackRegistry$NotifierCallback<",
        "Lcom/android/systemui/screenshot/ImageTileSet$OnContentChangedListener;",
        "Lcom/android/systemui/screenshot/ImageTileSet;",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/util/CallbackRegistry$NotifierCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNotifyCallback(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/screenshot/ImageTileSet$OnContentChangedListener;

    check-cast p2, Lcom/android/systemui/screenshot/ImageTileSet;

    check-cast p4, Landroid/graphics/Rect;

    invoke-interface {p1}, Lcom/android/systemui/screenshot/ImageTileSet$OnContentChangedListener;->onContentChanged()V

    return-void
.end method
