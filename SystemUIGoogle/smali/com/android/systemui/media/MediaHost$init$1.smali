.class public final Lcom/android/systemui/media/MediaHost$init$1;
.super Ljava/lang/Object;
.source "MediaHost.kt"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaHost;->init(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/MediaHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaHost$init$1;->this$0:Lcom/android/systemui/media/MediaHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/media/MediaHost$init$1;->this$0:Lcom/android/systemui/media/MediaHost;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/MediaHost;->setListeningToMediaData(Z)V

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost$init$1;->this$0:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->updateViewVisibility()V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost$init$1;->this$0:Lcom/android/systemui/media/MediaHost;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaHost;->setListeningToMediaData(Z)V

    return-void
.end method
