.class public interface abstract Landroidx/mediarouter/media/MediaRouterJellybean$VolumeCallback;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VolumeCallback"
.end annotation


# virtual methods
.method public abstract onVolumeSetRequest(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "routeObj",
            "volume"
        }
    .end annotation
.end method

.method public abstract onVolumeUpdateRequest(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "routeObj",
            "direction"
        }
    .end annotation
.end method
