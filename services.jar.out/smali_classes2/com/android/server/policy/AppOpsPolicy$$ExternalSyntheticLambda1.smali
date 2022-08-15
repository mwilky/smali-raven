.class public final synthetic Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/AppOpsPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/AppOpsPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/policy/AppOpsPolicy;

    return-void
.end method


# virtual methods
.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/policy/AppOpsPolicy;

    invoke-static {p0, p1, p2}, Lcom/android/server/policy/AppOpsPolicy;->$r8$lambda$aO_NnaJwsQZMgs1gEAW5MdOJKO0(Lcom/android/server/policy/AppOpsPolicy;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method
