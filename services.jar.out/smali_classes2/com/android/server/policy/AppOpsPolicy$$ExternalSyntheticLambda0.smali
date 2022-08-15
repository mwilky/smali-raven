.class public final synthetic Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/location/LocationManagerInternal$LocationPackageTagsListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/AppOpsPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/AppOpsPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/AppOpsPolicy;

    return-void
.end method


# virtual methods
.method public final onLocationPackageTagsChanged(ILandroid/os/PackageTagsList;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/AppOpsPolicy;

    invoke-static {p0, p1, p2}, Lcom/android/server/policy/AppOpsPolicy;->$r8$lambda$PLVLc0ZBI1a8CjJ53-mT9aInSik(Lcom/android/server/policy/AppOpsPolicy;ILandroid/os/PackageTagsList;)V

    return-void
.end method
