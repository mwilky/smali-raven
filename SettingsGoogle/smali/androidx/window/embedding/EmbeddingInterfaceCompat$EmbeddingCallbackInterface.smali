.class public interface abstract Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;
.super Ljava/lang/Object;
.source "EmbeddingInterfaceCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/EmbeddingInterfaceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EmbeddingCallbackInterface"
.end annotation


# virtual methods
.method public abstract onSplitInfoChanged(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/window/embedding/SplitInfo;",
            ">;)V"
        }
    .end annotation
.end method
