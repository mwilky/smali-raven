.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PermissionPolicyInternal;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PermissionPolicyInternal;ILjava/lang/String;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/policy/PermissionPolicyInternal;

    iput p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;->f$3:[I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/policy/PermissionPolicyInternal;

    iget v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;->f$1:I

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;->f$3:[I

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/wm/RootWindowContainer;->$r8$lambda$MC0EJXT4AdtfxNOjrlJVyarOVF0(Lcom/android/server/policy/PermissionPolicyInternal;ILjava/lang/String;[ILcom/android/server/wm/TaskFragment;)Z

    move-result p0

    return p0
.end method
