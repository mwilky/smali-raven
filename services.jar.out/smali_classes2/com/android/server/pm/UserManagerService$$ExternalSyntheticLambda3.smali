.class public final synthetic Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/UserManagerService;

    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->$r8$lambda$rBHs504BJNwsRe0tJ--hzgnQgcI(Lcom/android/server/pm/UserManagerService;ILjava/util/List;)I

    move-result p0

    return p0
.end method
