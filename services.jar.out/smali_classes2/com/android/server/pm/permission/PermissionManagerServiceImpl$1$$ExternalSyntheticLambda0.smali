.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$4:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->$r8$lambda$4ZU8kX3OTOWSR2BeFJXv4pmZczs(Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method
