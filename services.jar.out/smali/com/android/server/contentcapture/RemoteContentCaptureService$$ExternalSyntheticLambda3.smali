.class public final synthetic Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:Landroid/service/contentcapture/ActivityEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/service/contentcapture/ActivityEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda3;->f$0:Landroid/service/contentcapture/ActivityEvent;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda3;->f$0:Landroid/service/contentcapture/ActivityEvent;

    check-cast p1, Landroid/service/contentcapture/IContentCaptureService;

    invoke-static {p0, p1}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->$r8$lambda$v9sDcJGYM99mI-eI-4CjucoQ4xk(Landroid/service/contentcapture/ActivityEvent;Landroid/service/contentcapture/IContentCaptureService;)V

    return-void
.end method
