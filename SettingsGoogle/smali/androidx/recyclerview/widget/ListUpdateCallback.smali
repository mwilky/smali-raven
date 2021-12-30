.class public interface abstract Landroidx/recyclerview/widget/ListUpdateCallback;
.super Ljava/lang/Object;
.source "ListUpdateCallback.java"


# virtual methods
.method public abstract onChanged(IILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "count",
            "payload"
        }
    .end annotation
.end method

.method public abstract onInserted(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "count"
        }
    .end annotation
.end method

.method public abstract onMoved(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromPosition",
            "toPosition"
        }
    .end annotation
.end method

.method public abstract onRemoved(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "count"
        }
    .end annotation
.end method
