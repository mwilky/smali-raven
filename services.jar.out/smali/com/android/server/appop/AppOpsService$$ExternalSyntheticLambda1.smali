.class public final synthetic Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;->f$0:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;->f$0:Landroid/os/RemoteCallback;

    invoke-static {p0}, Lcom/android/server/appop/AppOpsService;->$r8$lambda$cU4tPCldqmXEiXiHWKEnCIAX32s(Landroid/os/RemoteCallback;)V

    return-void
.end method
