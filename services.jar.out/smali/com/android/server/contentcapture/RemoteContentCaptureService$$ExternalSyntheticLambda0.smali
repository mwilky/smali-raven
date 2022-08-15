.class public final synthetic Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 0

    iget p0, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Landroid/service/contentcapture/IContentCaptureService;

    invoke-static {p0, p1}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->$r8$lambda$TwL4DPvinMgbMYGCnofRVll0MWY(ILandroid/service/contentcapture/IContentCaptureService;)V

    return-void
.end method
