.class public final synthetic Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    check-cast p2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    check-cast p3, Landroid/media/IMediaRouter2Manager;

    invoke-static {p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->$r8$lambda$r-BrkZA8X-AEVaFVFK1LueGfB8I(Ljava/lang/Object;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/IMediaRouter2Manager;)V

    return-void
.end method
