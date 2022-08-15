.class public final synthetic Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/om/OverlayManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/om/OverlayManagerService;

    check-cast p1, Lcom/android/server/om/PackageAndUser;

    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerService$1;->$r8$lambda$sptdIjq6E4RHWX1SGCmMkF7ROI8(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V

    return-void
.end method
