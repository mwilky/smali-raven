.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda3;->f$0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda3;->f$0:I

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->lambda$onPackageUninstalledInternal$16(I)V

    return-void
.end method
