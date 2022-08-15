.class public final synthetic Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/service/contentcapture/SnapshotData;


# direct methods
.method public synthetic constructor <init>(ILandroid/service/contentcapture/SnapshotData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda5;->f$0:I

    iput-object p2, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda5;->f$1:Landroid/service/contentcapture/SnapshotData;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 1

    iget v0, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda5;->f$0:I

    iget-object p0, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda5;->f$1:Landroid/service/contentcapture/SnapshotData;

    check-cast p1, Landroid/service/contentcapture/IContentCaptureService;

    invoke-static {v0, p0, p1}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->$r8$lambda$_uld0njOo4_7mNfY8hXILzfginU(ILandroid/service/contentcapture/SnapshotData;Landroid/service/contentcapture/IContentCaptureService;)V

    return-void
.end method
