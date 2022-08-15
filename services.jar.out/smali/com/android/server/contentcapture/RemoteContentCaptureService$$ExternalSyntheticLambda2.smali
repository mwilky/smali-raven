.class public final synthetic Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:Landroid/view/contentcapture/DataRemovalRequest;


# direct methods
.method public synthetic constructor <init>(Landroid/view/contentcapture/DataRemovalRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda2;->f$0:Landroid/view/contentcapture/DataRemovalRequest;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda2;->f$0:Landroid/view/contentcapture/DataRemovalRequest;

    check-cast p1, Landroid/service/contentcapture/IContentCaptureService;

    invoke-static {p0, p1}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->$r8$lambda$7siEipFXhA9uvAtbFNVAzOXPLP4(Landroid/view/contentcapture/DataRemovalRequest;Landroid/service/contentcapture/IContentCaptureService;)V

    return-void
.end method
