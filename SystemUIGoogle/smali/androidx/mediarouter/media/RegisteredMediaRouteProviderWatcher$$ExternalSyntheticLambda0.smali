.class public final synthetic Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerCallback;


# instance fields
.field public final synthetic f$0:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;

.field public final synthetic f$1:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;


# direct methods
.method public synthetic constructor <init>(Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;Landroidx/mediarouter/media/RegisteredMediaRouteProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$$ExternalSyntheticLambda0;->f$0:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;

    iput-object p2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$$ExternalSyntheticLambda0;->f$1:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    return-void
.end method


# virtual methods
.method public final onControllerReleasedByProvider(Landroidx/mediarouter/media/MediaRouteProvider$RouteController;)V
    .locals 1

    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$$ExternalSyntheticLambda0;->f$0:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;

    iget-object p0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$$ExternalSyntheticLambda0;->f$1:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    invoke-static {v0, p0, p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->$r8$lambda$sRNNUhxw4NtRju42larhBrLS5ek(Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;Landroidx/mediarouter/media/RegisteredMediaRouteProvider;Landroidx/mediarouter/media/MediaRouteProvider$RouteController;)V

    return-void
.end method
