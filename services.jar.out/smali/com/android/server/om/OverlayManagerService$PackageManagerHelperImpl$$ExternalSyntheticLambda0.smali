.class public final synthetic Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    iput p2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    iget p0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-static {v0, p0, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->$r8$lambda$ayZO13uRzYuo0ByCOVWJQW0wwMw(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;ILcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method
