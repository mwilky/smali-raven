.class public final synthetic Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageSessionVerifier;

.field public final synthetic f$1:Lcom/android/server/pm/StagingManager$StagedSession;

.field public final synthetic f$2:Lcom/android/server/pm/PackageSessionVerifier$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/PackageSessionVerifier;

    iput-object p2, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/pm/StagingManager$StagedSession;

    iput-object p3, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/pm/PackageSessionVerifier$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/PackageSessionVerifier;

    iget-object v1, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/pm/StagingManager$StagedSession;

    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/pm/PackageSessionVerifier$Callback;

    invoke-static {v0, v1, p0}, Lcom/android/server/pm/PackageSessionVerifier;->$r8$lambda$wIxtdqTVPZrE1QO5DVx9uktnNQs(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    return-void
.end method
