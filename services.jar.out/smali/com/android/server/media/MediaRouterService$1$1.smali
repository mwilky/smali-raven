.class public Lcom/android/server/media/MediaRouterService$1$1;
.super Ljava/lang/Object;
.source "MediaRouterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouterService$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/media/MediaRouterService$1;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$1$1;->this$1:Lcom/android/server/media/MediaRouterService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$1$1;->this$1:Lcom/android/server/media/MediaRouterService$1;

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService;->restoreBluetoothA2dp()V

    return-void
.end method
