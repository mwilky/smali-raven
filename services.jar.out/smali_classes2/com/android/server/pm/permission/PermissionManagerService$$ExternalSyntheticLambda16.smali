.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerService;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;[ILjava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;->f$1:[I

    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;->f$3:Z

    iput p5, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;->f$4:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;->f$1:[I

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;->f$3:Z

    iget v4, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;->f$4:I

    move-object v5, p1

    check-cast v5, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->lambda$revokeRuntimePermissionsIfPermissionDefinitionChangedInternal$6$PermissionManagerService([ILjava/lang/String;ZILcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method
